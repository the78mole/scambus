#!/bin/bash

if [ -z $1 ]; then
	echo "Please give a filename as an argument."
	exit 1
fi

infile=$1

if [ ! -f $infile ]; then
	echo "not a vaild input file"
	exit 2
fi

while read aline; do
	./reader.py -v -t "$aline"
	echo -e "\n\n"
done < <(cat $infile)

