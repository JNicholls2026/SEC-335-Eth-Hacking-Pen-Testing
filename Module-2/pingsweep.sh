#! /usr/bin/env bash

for ip in $(seq 2 50);do
	a=$(ping -c1 10.0.5.$ip | grep "64 bytes"| grep -o -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}")
	if [ ! -z "$a" ]; then
		echo $a
	fi
	done
