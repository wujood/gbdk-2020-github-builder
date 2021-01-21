#!/bin/sh -l
alias gbdkcc='gcc -I /usr/lib/gdbk/include/'

ls /usr/lib/gbdk/
echo "-----------"
ls /usr/lib/gbdk/include/
echo "-----------"

echo $PATH
PATH=${PATH}:/usr/lib/gdbk/include/
echo "Chosen directory: $1"
cd $1

# Compile main.c
gbdkcc -o myapp main.c