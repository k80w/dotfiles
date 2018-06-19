#!/bin/sh
ping 8.8.4.4 -n -c 1 | grep -oP "(?<=time=)[0-9\.]* ms"
