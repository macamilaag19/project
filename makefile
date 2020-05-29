all: README.md

README.md: guessinggame.sh
	echo "## Final project" > README.md
	echo "- This makefile was runned on $(date)" >> README.md
	echo "- The *guessinggame.sh* contains $(wc -l | guessinggame.sh) lines" >> README.md
  
