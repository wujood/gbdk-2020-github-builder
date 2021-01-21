#!/bin/sh -l
alias gbdkcc='gcc -I /usr/lib/gdbk/include/'

echo "Chosen directory: $1"
cd $1

# Compile main.c
gdbkcc -o myapp main.c