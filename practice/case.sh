#!/bin/bash

read -p "enter word > "

case "$REPLY" in
  x|X)          echo "is x or X" ;;
  [[:alpha:]])  echo "is a single alpha char" ;;
  [ABC][0-9])   echo "is A, B, or C followed be a digit" ;;
  c)            echo "is c -- NEVER GETS EXECUTED" ;;
  ???)          echo "is 3 chars long" ;;
  *.txt)        echo "is a word ending in '.txt'" ;;&
  *)            echo "is something else" ;;
esac
