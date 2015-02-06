#!/usr/bin/env bash

expected=expected.txt
bindir=./bin
tempdir=$(mktemp -d)

for b in $bindir/*; do
	log=$tempdir/$(basename $b).log
	$b > $log

	if diff $expected $log &>/dev/null; then
		echo "OK:  $log"
	else
		echo "ERROR: $log"
	fi
done

# remove output dir by default
[[ $1 == '-k' ]] || rm -rf $tempdir
