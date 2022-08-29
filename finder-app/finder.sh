#! /bin/bash

filesdir=$1
searchstr=$2

if [[ -z filesdir ]]; then
  echo "Empty filesdir"
  exit 1
elif [[ -z searchstr ]]; then
  echo "Empty searchstr"
  exit 1
elif [[ ! -d $filesdir ]]; then
  echo "filedsdir not a directory"
  exit 1
else
  X=$(find $filesdir -type f | wc -l)
  Y=$(grep -r $searchstr $filesdir | wc -l)
  X=`echo $X | sed 's/ *$//g'`
  Y=`echo $Y | sed 's/ *$//g'`
  echo "The number of files are $X and the number of matching lines are $Y"
fi
