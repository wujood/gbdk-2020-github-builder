#!/bin/sh -l

# Set paths
#export PATH="$PATH:/usr/lib/gbdk/include:/usr/lib/gbdk/bin"
#export LD_LIBRARY_PATH="/usr/local/lib64/":$LD_LIBRARY_PATH
export CPATH="/usr/lib/gbdk/include"
alias gbdkcc='/usr/lib/gbdk/bin/lcc -Wa-l -Wl-j -DUSE_SFR_FOR_REG'

# Switch directory
echo "Chosen directory: $1"
cd $1

# Compile
gbdkcc -c -o $2.o $3.c
gbdkcc -o $2.gb $2.o