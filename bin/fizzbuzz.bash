#!/usr/bin/env bash
# FizzBuzz in BASH

for i in {1..100}; do
	if (( $i % 15 == 0 )); then
		echo "fizzbuzz"
	elif (( $i % 3 == 0 )); then
		echo "fizz"
	elif (( $i % 5 == 0 )); then
		echo "buzz"
	else
		echo $i
	fi
done
