#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {

  file_count=$(ls | wc -l)

  guessed=false

  echo "Welcome to the guessing game! Try to guess how many files are in this directory:"

  while [[ $guessed = false ]]
  do
    read response
    if [[ $response > $file_count ]]
    then
      echo "Thats not the correct answer. The number is smaller than that!"
    elif [[ $response < $file_count ]]
    then
      echo "Thats not the correct answer. The number is bigger than that!"
    elif [[ $response == $file_count ]]
    then
      echo "$response is the correct answer. Congratulations!"
      guessed=true
    fi
  done
}
