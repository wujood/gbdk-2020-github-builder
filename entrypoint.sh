#!/bin/sh -l

echo "Chosen directory: $1"
cd $1

cat /etc/ld.so.conf

# Compile main.c
gcc -o myapp main.c

return 0