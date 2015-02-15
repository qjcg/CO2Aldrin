#!/usr/bin/env bash

expected=expected.txt
bindir=./bin

# later checked via arithmetic evaluation where 0 == false
all_passing=1

for b in $bindir/*; do
	if diff $expected <($b) &>/dev/null; then
		echo "OK:  $b"
	else
		echo "ERROR: $b"
		all_passing=0
	fi
done

(( $all_passing )) || exit 1
