#!/bin/bash
origFile=$1
baseFile=$(basename $origFile | cut -d. -f1)
echo $baseFile
