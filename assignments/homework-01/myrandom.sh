#!/bin/bash
output = "there was an error."
shuf -n 1 /usr/share/dict/words > output
cat output