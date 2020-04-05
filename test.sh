#!/bin/bash

intentos=50000

if [ -f count ] 
then
  rm count
fi

touch count

for i in $(seq 1 $intentos)
do
  python src/main.py >> count &
done

cout_lines=$(cat count | wc -l)

echo "$cout_lines * 100 / $intentos" | bc -l
