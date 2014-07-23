#!/bin/sh
rm str.txt
for f in `find . -name '*.so'`; do
	echo ============= $f ============================================================================================= >> str.txt
	strings $f 2> /dev/null >> str.txt
	echo "" >> str.txt
done
