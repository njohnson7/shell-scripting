#!/bin/bash

for ((i = 0; i <= 20; i++)); do
  remainder=$((i % 5))
  if (( remainder == 0 )); then
    printf "<%d> " "$i"
  else
    printf "%d " "$i"
  fi
done
printf "\n"
# <0> 1 2 3 4 <5> 6 7 8 9 <10> 11 12 13 14 <15> 16 17 18 19 <20>
