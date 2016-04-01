#!/usr/bin/env zsh
# FizzBuzz in ZSH

for i in {1..100}; do
        if ! (( $i % 15 )); then
                echo "fizzbuzz"
        elif ! (( $i % 3 )); then
                echo "fizz"
        elif ! (( $i % 5 )); then
                echo "buzz"
        else
                echo $i
        fi
done
