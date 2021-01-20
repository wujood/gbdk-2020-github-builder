#!/bin/sh -l

echo "Chosen directory: $1"
cd $1

# Compile main.c
return gcc -o myapp main.c