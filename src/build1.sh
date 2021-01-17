#!/bin/sh
flex lex.l
bison -d bison.y
gcc -c *.c -g
gcc -o parser *.o -ly -lfl -g
rm -f *.o *.yy.c *.tab.*
./parser ../test/gcd.c 1

