#!/bin/bash

animals=('a dog' 'a cat' 'a fish')
for i in ${animals[*]}; do echo $i; done
echo
for i in ${animals[@]}; do echo $i; done
echo
for i in "${animals[*]}"; do echo $i; done
echo
for i in "${animals[@]}"; do echo $i; done
echo

echo ${animals[*]}
echo ${animals[@]}
echo "${animals[*]}"
echo "${animals[@]}"
echo

a[100]=foo
echo ${#a[@]}    # 1 -- number of array elems
echo ${#a[100]}  # 3 -- length of elem 100
echo

arr=([2]=a [4]=b [6]=c)
for i in "${arr[@]}"; do echo $i; done
for i in "${!arr[@]}"; do echo $i; done
echo "${!arr[@]}"
echo

arr=(a b c)
echo ${arr[@]}
arr+=(d e f)
echo ${arr[@]}
echo

# delete an array using unset
foo=(a b c d e f)
echo ${foo[@]}
unset foo
echo ${foo[@]}
echo '---'

# delete an array's elem using unset
foo=(a b c d e f)
echo ${foo[@]}
unset 'foo[2]'
echo ${foo[@]}
echo '---'

# any reference to an arr variable without a subscript refers to elem 0
foo=(a b c d e f)
echo ${foo[@]}
foo=
echo ${foo[@]} # b c d e f
echo '---'
