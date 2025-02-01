#!/bin/bash

# This is a program to tell a person's fortune

echo -e "\n ~~ Fortune Teller ~~ \n"

QUESTION=""
RESPONSES=("yes" "no" "Maybe" "Outlook good" "Dont count on it" "Ask again Later");

N=$((RANDOM%6))

GET_FORTUNE(){
if [[ ! $1 ]] then
  echo -e " \n Ask a yes or no question: \n "
else
  echo "Try again. Make sure it ends with a question mark:"
fi

read QUESTION
}

until [[ $QUESTION =~ \?$ ]] do
  GET_FORTUNE sadasd 
  #again
done 

echo -e "\n ${RESPONSES[N]} \n"
