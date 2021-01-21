#!/bin/sh -l
alias gbdkcc='/usr/lib/gbdk/lcc -Wa-l -Wl-j -DUSE_SFR_FOR_REG -I /usr/lib/gbdk/include/'

echo $PATH
PATH=${PATH}:/usr/lib/gbdk/include/

# Switch directory
echo "Chosen directory: $1"
cd $1

# Compile main.c
gbdkcc -c -o game.o main.c
gbdkcc -o game.gb game.o