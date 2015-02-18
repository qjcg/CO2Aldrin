# CO₂ Aldrin

Fizzing and buzzing along the road to enlightenment.

## Goals

- compare syntax and idioms


## Install

The most convenient way to evaluate and experiment with this
project is via [docker](https://www.docker.com):

```
docker pull qjcg/co2aldrin
```


## Test

When the docker container is run the CMD directive in the `qjcg/co2aldrin` Dockerfile runs
the test.sh script. 

```sh
$ docker run --rm qjcg/co2aldrin
OK:  ./bin/fizzbuzz.awk
OK:  ./bin/fizzbuzz.bash
/usr/bin/env: dart: No such file or directory
ERROR: ./bin/fizzbuzz.dart
OK:  ./bin/fizzbuzz.fish
OK:  ./bin/fizzbuzz.js
OK:  ./bin/fizzbuzz.lua
OK:  ./bin/fizzbuzz.php
OK:  ./bin/fizzbuzz.pl
OK:  ./bin/fizzbuzz.py
OK:  ./bin/fizzbuzz.rb
OK:  ./bin/fizzbuzz.rc
OK:  ./bin/fizzbuzz.tcl
OK:  ./bin/fizzbuzz.zsh
```


## Contribute

Pull requests are encouraged. Please:

- add new languages
- rewrite code to be more idiomatic


## Useful Resources

- [Hyperpolyglot](http://hyperpolyglot.org/)
- [Rosetta Code](http://rosettacode.org/wiki/Rosetta_Code)
