#!/bin/bash
origFile=$1
today=$(date +'%Y_%m_%d')
newFile=$today'_'$origFile
cp $1 ./$newFile
echo 'Done'