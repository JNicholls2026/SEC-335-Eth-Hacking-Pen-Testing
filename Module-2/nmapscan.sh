#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage: $0 <output_file>"
	exit 1
fi

output_file="$1"

nmap_output=$(nmap -sn 10.0.5.2-50)

filtered_output=$(echo "$nmap_output" | egrep "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}")

final_output=$(echo "$filtered_output" | awk '{n=split($0,a," "); print a[ n ]}')

#final_output=$(echo "$final_output" | cut 'no-response' -f1)


echo "$final_output"

echo "$final_output" > "$output_file"

echo "Results saved to $output_file"
