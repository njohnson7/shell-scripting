#!/bin/bash

finished=0
a=0
printf "a\ta**2\ta**3\n"
printf "=\t====\t====\n"

until ((finished)); do
  b=$((a**2))
  c=$((a**3))
  printf "%d\t%d\t%d\n" "$a" "$b" "$c"
  ((a<10?++a:(finished=1)))
done

# a       a**2    a**3
# =       ====    ====
# 0       0       0
# 1       1       1
# 2       4       8
# 3       9       27
# 4       16      64
# 5       25      125
# 6       36      216
# 7       49      343
# 8       64      512
# 9       81      729
# 10      100     1000
