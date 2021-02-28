#! /bin/bash

# https://www.shigemk2.com/entry/git.timestamp

set -eu

for FILE in `find repository`; do
  TIME=`git log --pretty=format:%ci -n1 $FILE`
  echo "$TIME $FILE"
  STAMP=`date -d "$TIME" +"%y%m%d%H%M.%S"`
  touch -t $STAMP $FILE
done
