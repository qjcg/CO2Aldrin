# CO₂ Aldrin

Fizzing and buzzing along the road to enlightenment.

## Goals

- 


## Install

The most convenient way to evaluate and experiment with this
project is to 

`docker pull qjcg/co2aldrin`

To simply get access

`git clone git@github.com:qjcg/CO2Aldrin`


## Test

When the docker container is run The CMD directive in the `qjcg/co2aldrin` Dockerfile runs
the test.sh script. 

```sh
$ docker run --rm qjcg/co2aldrin
OK:  /tmp/tmp.y2UiNhauz7/fizzbuzz.awk.log
OK:  /tmp/tmp.y2UiNhauz7/fizzbuzz.bash.log
ERROR: /tmp/tmp.y2UiNhauz7/fizzbuzz.dart.log
OK:  /tmp/tmp.y2UiNhauz7/fizzbuzz.fish.log
OK:  /tmp/tmp.y2UiNhauz7/fizzbuzz.js.log
OK:  /tmp/tmp.y2UiNhauz7/fizzbuzz.lua.log
OK:  /tmp/tmp.y2UiNhauz7/fizzbuzz.php.log
OK:  /tmp/tmp.y2UiNhauz7/fizzbuzz.pl.log
OK:  /tmp/tmp.y2UiNhauz7/fizzbuzz.py.log
OK:  /tmp/tmp.y2UiNhauz7/fizzbuzz.rb.log
OK:  /tmp/tmp.y2UiNhauz7/fizzbuzz.rc.log
OK:  /tmp/tmp.y2UiNhauz7/fizzbuzz.tcl.log
OK:  /tmp/tmp.y2UiNhauz7/fizzbuzz.zsh.log
```


## Contributing

Pull requests encouraged for:

- adding new languages
- changing code to be more idiomatic

The excellent [Hyperpolyglot](http://hyperpolyglot.org/)
is a handy reference.
