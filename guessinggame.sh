#!/usr/bin/env bash

echo "    ==== Guessing game ===="

function guessFxn {
	echo "Guess the number of files in the current dir:"
	read guess
    fileCount=$(ls -1 | wc -l)
}

guessFxn

while [[ $guess -ne $fileCount ]]
do
	if [[ $guess -lt $fileCount ]] 
	then
		echo "Too low!"
	else
		echo "Too high!"
	fi
	guessFxn
done

echo "Hurray!!! That's absolutely right."