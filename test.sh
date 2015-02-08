#!/usr/bin/env bash

expected=expected.txt
bindir=./bin
tempdir=$(mktemp -d)

# later checked via arithmetic evaluation where 0 == false
all_passing=1

for b in $bindir/*; do
	log=$tempdir/$(basename $b).log
	$b > $log

	if diff $expected $log &>/dev/null; then
		echo "OK:  $b"
	else
		echo "ERROR: $b"
		all_passing=0
	fi
done

# remove output dir by default
[[ $1 == '-k' ]] || rm -rf $tempdir
(( $all_passing )) || exit 1
