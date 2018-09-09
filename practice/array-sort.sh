#!/bin/bash

arr=(f e d a c b)
echo "original array: ${arr[@]}"
arr_sorted=($(for i in "${arr[@]}"; do echo $i; done | sort))
echo "sorted array:   ${arr_sorted[@]}"
