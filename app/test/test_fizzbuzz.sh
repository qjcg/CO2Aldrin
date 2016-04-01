#!/usr/bin/env bash

expected=/app/expected.txt
bindir=/app/bin

# later checked via arithmetic evaluation where 0 == false
all_passing=1

for b in $bindir/fizzbuzz*; do
	if diff $expected <($b) &>/dev/null; then
		echo "PASSED: $b"
	else
		echo "FAILED: $b"
		all_passing=0
	fi
done

(( $all_passing )) || exit 1
