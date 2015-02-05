package main

import (
	"fmt"
	"strconv"
)

func main() {
	for i := 1; i <= 100; i++ {
		var output string
		switch {
		case i%15 == 0:
			output = "fizzbuzz"
		case i%3 == 0:
			output = "fizz"
		case i%5 == 0:
			output = "buzz"
		default:
			output = strconv.Itoa(i)
		}
		fmt.Println(output)
	}
}
