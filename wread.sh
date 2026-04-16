#!/bin/bash

exec 3<>/dev/tcp/$1/80

(
printf "GET / HTTP/1.1\r\nHost: $1\r\nConnection: close\r\nUser-agent: curl/8.4.0\r\n\r\n" >&3
cat <&3
)
