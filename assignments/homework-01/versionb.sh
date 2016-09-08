#!/bin/bash
origFile=$1
baseFile=$(basename $origFile | cut -d. -f1)
baseExtension=$(basename $origFile | cut -d. -f2)
today=$(date +'%Y_%m_%d')

newFile=$baseFile'_'$today'.'$baseExtension
cp $1 ./$newFile
echo 'Done'
