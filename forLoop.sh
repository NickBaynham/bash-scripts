#!/bin/bash

LOOP_COUNTER=1
OUT_FILE=output.txt
> $OUT_FILE

if [ "$1" ]; then
  LOOP_COUNTER=$1
fi
for (( i=1; i<=$LOOP_COUNTER || LOOP_COUNTER==0; i++ ))
do
  echo "$i" | tee -a $OUT_FILE
done

