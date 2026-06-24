from scapy.all import *

pkt = Ether(
    dst="00:11:22:33:44:55",
    src="24:6a:0e:82:58:14",
    type=0x88B5
) / Raw(b"hello fpga")
hexdump(pkt)

sendp(pkt, iface="Intel(R) Ethernet Connection (17) I219-LM")