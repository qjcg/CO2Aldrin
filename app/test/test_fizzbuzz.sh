#!/usr/bin/env bash
# Compare all fizzbuzz command output to expected output

expected=expected.log
bindir=../bin

# later checked via arithmetic evaluation where 0 == false
all_passed=1

for b in $bindir/fizzbuzz*; do
	if diff $expected <($b) &>/dev/null; then
		echo "PASSED: $b"
	else
		echo "FAILED: $b"
		all_passed=0
	fi
done

(( $all_passed )) || exit 1
