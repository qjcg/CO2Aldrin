#!/usr/bin/env bash

# NB: the 2>&1 in command substitutions captures stderr where necessary
declare -A version
if [[ -x /usr/bin/gawk ]]; then
	version[awk]="$(gawk --version | head -1)"
elif [[ -x /usr/bin/mawk ]]; then
	version[awk]="$(mawk -W version |& head -1)"
fi
version[bash]="$(bash --version | head -1)"
version[dart]="$(dart --version 2>&1)"
version[fish]="$(fish --version 2>&1)"
version[go]="$(go version)"
version[haskell]="$(ghc --version)"
version[node]="$(node --version)"
version[lua]="$(lua -v)"
version[php]="$(php --version | head -1)"
version[python]="$(python3 --version)"
version[ruby]="$(ruby --version)"
version[tclsh]="$(tclsh <<< 'puts $tcl_version')"
version[zsh]="$(zsh --version)"

for lang in ${!version[*]}; do
	printf "%8s: %s\n" $lang "${version[$lang]}"
done |& sort
