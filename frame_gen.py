from scapy.all import *

payload = bytes(range(256))

frame = Ether(
    dst="00:11:22:33:44:55",
    src="AA:BB:CC:DD:EE:FF",
    type=0x0800
) / Raw(payload)

sendp(frame, iface="Ethernet")