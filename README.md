# CO₂ Aldrin

```
A crisp fizzing sound,
followed by a cool buzz, as
the dark becomes light!
```

A small polyglot programming project.

Consists of:

- code implementing simple tasks in a variety of languages
- a `Dockerfile` for building and running the code

Draws inspiration from the most excellent [Rosetta Code] and [HyperPolyglot]
projects. Unlike in those projects, code included here is not meant to be a
comprehensive resource, but instead is written as a learning exercise.


## Install

Either pull the pre-built image from the public [Docker
Hub](https://hub.docker.com/r/qjcg/co2aldrin/), or clone this repo and
build locally.

Alternatively, compilers and/or interpreters can be installed on your host
machine to run commands directly without `docker`.

### Pull image from Docker Hub

```sh
$ docker pull qjcg/co2aldrin
```

### Build Locally

`cd` into your copy of this repo, and run:

```sh
$ docker build -t qjcg/co2aldrin .
```


## Use

By default, running the docker image will print the result of testing all
commands:

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

To print version information:

```sh
$ docker run --rm qjcg/co2aldrin versions
      go: go version go1.5.3 linux/amd64
     gcc: gcc (Alpine 5.3.0) 5.3.0
     lua: Lua 5.1.5  Copyright (C) 1994-2012 Lua.org, PUC-Rio
     php: PHP 5.6.17 (cli) (built: Jan 24 2016 22:24:02) 
     zsh: zsh 5.2 (x86_64-alpine-linux-musl)
    bash: GNU bash, version 4.3.42(1)-release (x86_64-alpine-linux-musl)
    fish: fish, version 2.2.0
    node: v4.3.0
    ruby: ruby 2.2.4p230 (2015-12-16 revision 53155) [x86_64-linux-musl]
   tclsh: 8.6
  python: Python 3.5.1
 haskell: The Glorious Glasgow Haskell Compilation System, version 7.10.3
```


## Contribute

Pull requests welcome.

Changes to make code more idiomatic are of particular interest.


## Resources

- [Rosetta Code]
- [Hyperpolyglot]
- [Hammer Principle: Programming Languages](http://hammerprinciple.com/therighttool)


## License

MIT



[Rosetta Code]: http://rosettacode.org/wiki/Rosetta_Code
[HyperPolyglot]: http://hyperpolyglot.org/
