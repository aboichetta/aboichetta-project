#!/usr/bin/env bash
# File: guessinggame.sh

function guess {
  local file_count=$(ls -a | wc -l)
  echo $file_count
}

correct=$(guess)

echo "Welcome to the guessing game! Try to guess how many files are in this directory:"
read response

while [[ $response -ne $correct ]]
do
  if [[ $response -gt $correct ]]
  then
    echo
    echo "That's not the correct answer. The number is smaller than that."
  elif [[ $response -lt $correct ]]
  then
    echo
    echo "That's not the correct answer. The number is bigger than that."
  fi
  echo "Please, try again:"
  read response
done
                                                                                                                    
echo

echo "$response is the correct answer. Congratulations!"
