#!/usr/bin/env php
# FizzBuzz in PHP

<?php
for ( $i = 1; $i <= 100; $i++) {
	if ( $i % 15 == 0 ) {
		echo "fizzbuzz\n";
	} elseif ( $i % 3 == 0 ) {
		echo "fizz\n";
	} elseif ( $i % 5 == 0 ) {
		echo "buzz\n";
	} else {
		echo "$i\n";
	}
}
?>
