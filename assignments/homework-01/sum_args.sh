#!/bin/bash
let total=0
for var in "$@"
do
    (($total += $var))
done
echo $total
echo 'done'