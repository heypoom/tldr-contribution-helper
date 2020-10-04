#!/usr/bin/env bash

rm *.log > /dev/null

compgen -c > binaries.log

echo "Found $(wc -l binaries.log) binaries in PATH"

count=0

cat binaries.log | while read bin
do
	result=$(tldr $bin)

	if [[ $result =~ "not found in cache" ]]
	then
		echo "🎉 $bin not found! Please contribute a tldr page for $bin."

		count=$((count + 1))

		echo $bin | tee -a contribution-list.log > /dev/null
	fi
done

echo "👍 Found $count uncontributed binaries."
