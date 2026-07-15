# UDP Engine Integration Guide

`src/udp/udp_engine.vhd` is the complete instantiable endpoint. It supports Ethernet II ARP and unfragmented, fixed-header IPv4/UDP. Other EtherTypes and IP protocols are drained and dropped.

## Interface boundary

The entity has three bus interfaces and direct RMII pins:

- `S_AXI_*`: 32-bit AXI4-Lite register slave in `S_AXI_ACLK`.
- `M_AXI_RD_*`: independent 32-bit AXI4 read master used only for TX descriptors and payloads.
- `M_AXI_WR_*`: independent 32-bit AXI4 write master used only for RX metadata and payloads.
- `i_ref_clk`, `i_rxd`, `i_rxer`, `i_crs_dv`, `o_txd`, and `o_tx_en`: RMII PHY interface.

Both AXI masters issue aligned, one-beat, 32-bit incrementing transactions. `ARLEN` and `AWLEN` are zero, `ARSIZE` and `AWSIZE` are `010`, and write strobes preserve partial final payload words. Separate read and write masters allow direct connection to separate SmartConnect slave inputs without arbitration inside the endpoint.

The default generics are:

```text
G_LOCAL_MAC                     = 00:11:22:33:44:55
G_ARP_RETRY_INTERVAL_CYCLES     = 500,000,000
G_ARP_MAX_REQUESTS              = 3
```

At the current 100 MHz AXI clock, the retry interval is five seconds. The timer starts only after an ARP request has been completely committed into a TX frame bank.

## AXI-Lite register map

All registers are 32-bit and word-aligned. Invalid or unaligned accesses return `SLVERR`. Pointer registers require bits 31:3 to be zero.

| Offset | Register | Access | Meaning |
| --- | --- | --- | --- |
| `0x00` | `DMA_BASE_ADDR` | R/W | Aligned base of the 15,000-byte packet region |
| `0x04` | `RX_QUEUE_0_CONFIG` | R/W | Bit 31 enable; bits 15:0 bound local UDP port |
| `0x08` | `RX_QUEUE_0_HEAD` | R/W | Software consumer pointer |
| `0x0C` | `RX_QUEUE_0_TAIL` | R | Hardware producer pointer |
| `0x10` | `RX_QUEUE_1_CONFIG` | R/W | Bit 31 enable; bits 15:0 bound local UDP port |
| `0x14` | `RX_QUEUE_1_HEAD` | R/W | Software consumer pointer |
| `0x18` | `RX_QUEUE_1_TAIL` | R | Hardware producer pointer |
| `0x1C` | `TX_QUEUE_HEAD` | R | Hardware consumer pointer |
| `0x20` | `TX_QUEUE_TAIL` | R/W | Software producer pointer |
| `0x24` | `LOCAL_IPV4_ADDR` | R/W | Canonical numeric IPv4 value |
| `0x28` | `SUBNET_MASK` | R/W | Canonical numeric subnet mask |
| `0x2C` | `DEFAULT_GATEWAY` | R/W | Canonical numeric gateway IPv4 value |

For example, `192.168.1.100` is written as `0xC0A80164`. Writes to any network configuration register invalidate the ARP cache.

## Queue pointers

Bits 2:0 are `{wrap, index[1:0]}`. The RX depth-three sequence is:

```text
000 -> 001 -> 010 -> 100 -> 101 -> 110 -> 000
```

The TX depth-four sequence is ordinary three-bit incrementing:

```text
000 -> 001 -> 010 -> 011 -> 100 -> 101 -> 110 -> 111 -> 000
```

A queue is empty when head equals tail. It is full when the indices match and the wrap bits differ. All physical entries are usable.

## DMA region

Every entry is exactly 1,500 bytes. Each begins with 16 bytes of native 32-bit metadata, followed by at most 1,472 payload bytes.

| Offset from DMA base | Owner |
| ---: | --- |
| `0` | RX socket 0, entry 0 |
| `1500` | RX socket 0, entry 1 |
| `3000` | RX socket 0, entry 2 |
| `4500` | RX socket 1, entry 0 |
| `6000` | RX socket 1, entry 1 |
| `7500` | RX socket 1, entry 2 |
| `9000` | TX entry 0 |
| `10500` | TX entry 1 |
| `12000` | TX entry 2 |
| `13500` | TX entry 3 |
| `15000` | End of reserved region |

TX metadata:

```text
word 0: destination IPv4 address
word 1: [31:16] source UDP port, [15:0] destination UDP port
word 2: [15:0] payload length
word 3: reserved, write zero
```

RX metadata:

```text
word 0: source IPv4 address
word 1: [31:16] destination UDP port, [15:0] source UDP port
word 2: [15:0] payload length, [31:16] flags (currently zero)
word 3: reserved, currently zero
```

Descriptor words use the MicroBlaze/native 32-bit convention. Packet bytes in payload memory remain in sequential byte order. Network headers are generated and parsed in big-endian wire order.

## Commit and failure behavior

- RX tail advances only after a valid Ethernet terminator, valid IPv4/UDP checks, successful AXI writes, and a commit-time socket configuration recheck.
- TX head advances after a full frame is committed to an internal bank or after an invalid/unresolved/error descriptor is intentionally dropped.
- The two TX banks have `FREE/FILLING/READY/SENDING` ownership semantics. A bank is not visible across the CDC boundary until its final word is accepted. Abort therefore cannot transmit a partial frame.
- RX FIFO overflow inserts an error terminator and refuses a new frame until that marker has been written.
- ARP replies have selection priority over resolver-generated requests. Arbitration is frame-granular and non-preemptive.

## Protocol limits

- IPv4 Ethernet II only; no VLAN, IPv6, DHCP, ICMP, TCP, multicast, or raw-frame API.
- IPv4 IHL must be five. Fragment offset and MF must be zero.
- RX validates the IPv4 header checksum. UDP checksums are accepted without verification.
- TX emits UDP checksum zero, TTL 64, and DF set.
- TX supports only unicast IPv4 destinations and rejects the local FPGA address.
- One ARP resolution may be outstanding. The ARP cache has four round-robin-replaced entries and no expiry timer.

## Software

`sw/udp_api.h` and `sw/udp_api.c` implement the polling API from `plan.txt`. Define `UDP_ENGINE_MMIO_BASE` in the BSP build or call `udp_set_mmio_base()` before `udp_init()`.

The checked-in MicroBlaze configuration has instruction and data caches disabled. If data cache is enabled later, define `UDP_CACHE_FLUSH_RANGE` and `UDP_CACHE_INVALIDATE_RANGE` to the appropriate BSP cache operations before compiling `udp_api.c`.

## Simulation

`sim/udp/tb_udp_engine.sv` is a mixed-language integration demonstration. It:

1. Configures the endpoint and queues a five-byte TX descriptor.
2. Checks the emitted ARP request.
3. Injects an ARP reply.
4. Checks the emitted IPv4/UDP frame.
5. Injects a UDP packet and checks RX metadata, payload, and tail publication.

The DUT uses `xpm_fifo_async`; compile and map the Xilinx `xpm` simulation library before running the testbench.

`sim/udp/synth_check.tcl` performs an out-of-context synthesis for the Basys 3 `xc7a35tcpg236-1`. With Vivado 2025.2, the completed engine synthesized with zero errors and zero critical warnings, using approximately 2,575 slice LUTs, 2,846 slice registers, one RAMB36 (RX FIFO), and two RAMB18s (the TX frame banks). These figures are pre-place-and-route and may move slightly when integrated into the full design.
