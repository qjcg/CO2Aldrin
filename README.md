# CO₂ Aldrin

Fizzing and buzzing along the road to enlightenment.

The goal is to compare language syntax and idioms by implementing simple
functionality in multiple languages.

Building and running code happens in the included `Dockerfile`.


## Install

The most convenient way to use this code is via [docker](https://www.docker.com).

### Pull image from Docker Registry

```sh
$ docker pull qjcg/co2aldrin
```

### Build Locally

`cd` into your copy of this repo, and run:

```sh
$ docker build -t qjcg/co2aldrin .
```


## Use

```sh
$ docker run --rm qjcg/co2aldrin
PASSED: /app/bin/fizzbuzz.awk
PASSED: /app/bin/fizzbuzz.bash
PASSED: /app/bin/fizzbuzz.fish
PASSED: /app/bin/fizzbuzz.js
PASSED: /app/bin/fizzbuzz.lua
PASSED: /app/bin/fizzbuzz.php
PASSED: /app/bin/fizzbuzz.pl
PASSED: /app/bin/fizzbuzz.py
PASSED: /app/bin/fizzbuzz.rb
PASSED: /app/bin/fizzbuzz.tcl
PASSED: /app/bin/fizzbuzz.zsh
```


## Contribute

Pull requests are encouraged. Please:

- add new languages
- rewrite code to be more idiomatic


## Resources

- [Hyperpolyglot](http://hyperpolyglot.org/)
- [Rosetta Code](http://rosettacode.org/wiki/Rosetta_Code)
- [Hammer Principle: Programming Languages](http://hammerprinciple.com/therighttool)


## License

MIT
