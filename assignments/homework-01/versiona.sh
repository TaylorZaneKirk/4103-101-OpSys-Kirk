#!/bin/bash
origFile=$1
today=$(date +'%Y_%m_%d')
newFile="$today_$origFile"
echo $newFile