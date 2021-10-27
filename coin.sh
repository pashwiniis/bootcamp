#!/bin/bash -x

heads_counter=0
tails_counter=0

while [ $heads_counter -lt 11 -a  $tails_counter -lt 11 ]
do
   a=$((RANDOM%2))
   if [ $a -eq 1 ]
   then
      echo $heads_counter "heads"
      ((heads_counter++))
      
    else
        echo $tails_counter "tails"
        ((tails_counter++))
    fi


done