#!/bin/bash

filename=$1
if [ $# -ne 1 ]
then
  echo "./exe.sh filename"
  exit 1
fi

ghc -o $filename ${filename}.hs
echo -e "exe ${filename}.hs\n\n\n----------\n"
./${filename}
rm ${filename}
rm ${filename}.o
rm ${filename}.hi
