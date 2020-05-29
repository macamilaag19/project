bandera=1
files=0
let files=$(ls -l | wc -l)

function guesser {
  local right=$files
  status=0 
  if [[ $1 -lt $right ]]
  then
    status=1
  elif [[ $1 -gt $right ]]
  then 
    status=2
  else 
    status=3
  fi 
  echo $status
}

while [[ $bandera -eq 1 ]]
do
  echo "Guess the number of files in this directory"
  read userguess

  if [[ $(guesser $userguess) -eq 1 ]]
  then
    echo "Your guess is lower than the number, try a bigger one"

  elif [[ $(guesser $userguess) -eq 2 ]]
  then
    echo "Your guess is bigger than the number, try a lower one"

  else
    echo "Congratulations!!!"
    bandera=0
  fi
done
