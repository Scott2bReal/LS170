#!/usr/bin/bash

integer_1=10
integer_2=50
integer_3=100

if [[ -e ./0_hello_world.sh ]]
then
  echo There is a file named hello_world.sh
fi

if [[ $integer_1 -ge 10 ]] && [[ $integer_3 -gt $integer_1 ]]
then
  echo You already know that $integer_1 is greater than $integer_3
fi
