package main

import (
	"bytes"
	"io/ioutil"
	"log"
	"os/exec"
	"testing"
)

var binDir = "../bin"

func TestFizzBuzz(t *testing.T) {
	expected, err := ioutil.ReadFile("expected_fizzbuzz.log")
	if err != nil {
		log.Fatal(err)
	}

	// TODO: Use table driven testing with a for loop here.
	t.Run("Go", getSubtestFunc("fizzbuzz-go", expected))
	t.Run("Rust", getSubtestFunc("fizzbuzz-rust", expected))
}

func getSubtestFunc(binary string, expected []byte) func(*testing.T) {
	return func(t *testing.T) {
		cmd := exec.Command(binDir + "/" + binary)
		result, err := cmd.Output()
		if err != nil {
			t.Error(err)
		}

		if !bytes.Equal(result, expected) {
			t.Error("FAIL %s result did not match expected")
		}
	}
}
