#!/bin/sh

date=$(date +%Y%m%d)

for file in test*
do
	mv "$file" "$file.$date"
done
