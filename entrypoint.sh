#!/bin/sh -l

echo "Chosen directory: $1"
cd $1

# Compile main.c
gcc -I${usr/lib/gbdk/include/} -o myapp main.c