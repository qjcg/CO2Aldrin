#!/usr/bin/env bash

# NB: the 2>&1 in command substitutions is for capturing stderr where necessary
declare -A version
version[awk]="$(awk --version | head -1)"
version[bash]="$(bash --version | head -1)"
version[dart]="$(dart --version 2>&1)"
version[fish]="$(fish --version 2>&1)"
version[go]="$(go version)"
version[node]="$(node --version)"
version[lua]="$(lua -v)"
version[php]="$(php --version | head -1)"
version[python]="$(python3 --version)"
version[ruby]="$(ruby --version)"
version[tclsh]="$(tclsh <<< 'puts $tcl_version')"

for lang in ${!version[*]}; do
	printf "%8s: %s\n" $lang "${version[$lang]}"
done | sort
