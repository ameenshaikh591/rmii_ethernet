#!/usr/bin/env python3
"""Receive and display UDP packets sent by the FPGA UDP engine."""

from __future__ import annotations

import socket
from datetime import datetime


# Leave this as "0.0.0.0" to listen on every IPv4 address assigned to the
# computer.  To restrict reception to the directly connected Ethernet adapter,
# replace it with that adapter's automatically assigned IPv4 address, such as
# "169.254.87.23".
LISTEN_IP = "0.0.0.0"

# This must match PC_DESTINATION_PORT in main.c.
LISTEN_PORT = 4321

# The UDP engine supports payloads up to 1472 bytes; this larger buffer also
# makes truncation impossible if the test setup changes later.
RECEIVE_BUFFER_BYTES = 65535


def main() -> None:
    with socket.socket(socket.AF_INET, socket.SOCK_DGRAM) as udp_socket:
        udp_socket.bind((LISTEN_IP, LISTEN_PORT))

        print(f"Listening for UDP on {LISTEN_IP}:{LISTEN_PORT}")
        print("Press Ctrl+C to stop.\n")

        try:
            while True:
                payload, sender = udp_socket.recvfrom(RECEIVE_BUFFER_BYTES)
                timestamp = datetime.now().astimezone().isoformat(timespec="seconds")

                print(f"[{timestamp}] Received {len(payload)} bytes "
                      f"from {sender[0]}:{sender[1]}")

                try:
                    print(f"Text: {payload.decode('utf-8')}", end="")
                    if not payload.endswith((b"\n", b"\r")):
                        print()
                except UnicodeDecodeError:
                    print("Text: <payload is not valid UTF-8>")

                print(f"Hex:  {payload.hex(' ')}\n")
        except KeyboardInterrupt:
            print("\nReceiver stopped.")


if __name__ == "__main__":
    main()
