bin = ./bin
src = ./src

all: fizzbuzz-c fizzbuzz-cpp fizzbuzz-go fizzbuzz-haskell

fizzbuzz-c: ${src}/fizzbuzz.c
	gcc -g -static -o ${bin}/fizzbuzz-c ${src}/fizzbuzz.c

fizzbuzz-cpp: ${src}/fizzbuzz.cpp
	g++ -static -o ${bin}/fizzbuzz-cpp ${src}/fizzbuzz.cpp

fizzbuzz-go: ${src}/fizzbuzz.go
	go build -o ${bin}/fizzbuzz-go ${src}/fizzbuzz.go

fizzbuzz-haskell: ${src}/fizzbuzz.hs
	ghc -static -o ${bin}/fizzbuzz-haskell ${src}/fizzbuzz.hs

clean:
	rm ${bin}/fizzbuzz-*

.PHONY: clean
