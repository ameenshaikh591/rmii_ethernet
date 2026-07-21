#include "udp_api.h"

#include "xil_printf.h"

/* Vivado address-map assignments. */
#define UDP_ENGINE_MMIO_BASE ((uintptr_t)0x40000000u)
#define UDP_PACKET_RAM_BASE  ((uintptr_t)0xC0000000u)

/*
 * Example network configuration:
 *
 *   FPGA: 192.168.1.100/24
 *   PC:   192.168.1.50/24
 *
 * Change these constants to match the static configuration of the Ethernet
 * adapter connected to the FPGA.  The gateway is not needed when the PC is
 * on the same subnet.
 */
#define FPGA_IPV4_ADDRESS  0xC0A80164u
#define FPGA_SUBNET_MASK   0xFFFFFF00u
#define FPGA_GATEWAY       0x00000000u
#define PC_IPV4_ADDRESS    0xC0A80132u

#define FPGA_SOURCE_PORT   1234u
#define PC_DESTINATION_PORT 4321u

int main(void)
{
    static const char payload[] = "Hello from the FPGA UDP engine!\r\n";
    const udp_config_t config = {
        .dma_base = UDP_PACKET_RAM_BASE,
        .local_ip = FPGA_IPV4_ADDRESS,
        .subnet_mask = FPGA_SUBNET_MASK,
        .default_gateway = FPGA_GATEWAY
    };
    udp_socket_t socket;
    int result;

    xil_printf("UDP transmit test starting\r\n");

    udp_set_mmio_base(UDP_ENGINE_MMIO_BASE);

    result = udp_init(&config);
    if (result != UDP_OK) {
        xil_printf("udp_init failed: %d\r\n", result);
        return result;
    }

    socket = udp_socket_open(FPGA_SOURCE_PORT);
    if (socket < 0) {
        xil_printf("udp_socket_open failed: %d\r\n", socket);
        return socket;
    }

    result = udp_send(socket,
                      payload,
                      (uint16_t)(sizeof(payload) - 1u),
                      PC_IPV4_ADDRESS,
                      PC_DESTINATION_PORT);
    if (result != UDP_OK) {
        xil_printf("udp_send failed: %d\r\n", result);
        return result;
    }

    /*
     * udp_send() publishes the descriptor to hardware; it does not wait for
     * ARP resolution or for the frame to finish transmitting.  Keep the
     * application alive while the UDP engine completes those operations.
     */
    xil_printf("UDP packet queued for 192.168.1.50:4321\r\n");
    for (;;) {
        /* Idle. */
    }
}
