#!/usr/bin/env fish

for i in (seq 1 100)
	if test (math "$i % 15") -eq 0
		echo "fizzbuzz"
	else if test (math "$i % 3") -eq 0
		echo "fizz"
	else if test (math "$i % 5") -eq 0
		echo "buzz"
	else
		echo "$i"
	end
end
