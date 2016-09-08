#!/bin/bash
origFile=$1
baseFile=$(basename $origFile | cut -d. -f2)
echo $baseFile
