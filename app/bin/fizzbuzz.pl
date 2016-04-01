#!/usr/bin/env perl
# FizzBuzz in Perl

for (my $i=1; $i <= 100; $i++) {
	if ($i % 15 == 0) {
		print "fizzbuzz\n";
	} elsif ($i % 3 == 0) {
		print "fizz\n";
	} elsif ($i % 5 == 0) {
		print "buzz\n";
	} else {
		print "$i\n";
	}
}
