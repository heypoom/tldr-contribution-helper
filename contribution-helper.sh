#!/usr/bin/env bash

compgen -c > binaries.txt

echo "Found $(wc -l binaries.txt) binaries in PATH"

cat binaries.txt | while read bin
do
	echo "Checking Binary:" $bin
done

