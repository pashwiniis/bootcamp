#!/bin/bash -x
echo "enter Number"
read num
function isPrime(){
 ((isItPrime=1))
 for (( i=2; i<=num/2; i++))
  do
    if [ $((num%i)) -eq 0 ]
      then
        ((isItPrime=0))
         echo "$num is not a prime number"
         exit
    fi
  done
 echo "$num is a prime number"

}

function isPalindrome(){
temp=$num
reverse=0
while [ $num -gt 0 ]
do
 s=$((num%10))
num=$((num/10))
 reverse=$((reverse*10+s)) 
done
if [ $temp -eq $reverse ]
then
 echo "It is a Palindrom"
else
 echo "It is not a Palindrome"
fi


}
isPrime &
isPalindrome &