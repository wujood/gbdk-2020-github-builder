#!/bin/sh -l
alias gbdkcc='gcc -I /usr/lib/gbdk/include/'

echo $PATH
PATH=${PATH}:/usr/lib/gbdk/include/

# Switch directory
echo "Chosen directory: $1"
cd $1

# Compile main.c
gbdkcc -o myapp main.c