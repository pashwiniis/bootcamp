#!/bin/bash -x
echo "enter Number num1 and num2"
read num1 num2
for num in $(seq $num1 $num2)
do
  k=0
  for i in $(seq 2 $(expr $num - 1))
  do
    if [ $(expr $num % $i) -eq 0 ]
      then
         k=1
         break
    fi
  done
    if [ $k -eq 0 ]
    then
     echo "prime number is" $num 
    fi
done


