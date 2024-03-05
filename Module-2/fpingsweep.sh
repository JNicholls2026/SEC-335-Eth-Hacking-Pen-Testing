#! /usr/bin/env bash

for ip in $(seq 2 50);do
	a=$(fping 10.0.5.$ip 2>/dev/null | grep "is alive"| grep -o -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}")
	if [ ! -z "$a" ]; then
		echo $a
	fi
	done
