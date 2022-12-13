all: README.md

README.md: guessinggame.sh
	echo "Guessing Game" > README.md
	echo -n "\nMake date: " >> README.md
	date >> README.md
	echo -n "\nNumber of lines of code in guessinggame.sh: " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm -f README.md
