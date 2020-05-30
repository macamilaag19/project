all: README.md

README.md: guessinggame.sh
	echo "## Final project" > README.md
	echo "- This makefile was runned on " >> README.md
	echo `date` >> README.md
	echo "- The *guessinggame.sh* contains `(ls -l | guessinggame.sh)` lines" >> README.md
  
