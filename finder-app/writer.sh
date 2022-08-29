#!/bin/bash

writefile=$1
writestr=$2

if [[ -z writefile ]]; then
  echo "writefile is empty"
  exit 1
elif [[ -z writestr ]]; then
  echo "writestr is empty"
  exit 1
fi
{
  mkdir -p $(dirname $writefile)
  touch $writefile
  chmod 777 $writefile
  echo $writestr >| $writefile
} || {
  echo "writer failed"
  exit 1
}
