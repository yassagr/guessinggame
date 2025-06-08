#! /bin/bash
check_guess() {
total_files=$(ls $(pwd) | wc -l)
while true; do
echo "Can you guess how many files are here?"
read guessed_total

	if ! [[ $guessed_total =~ ^[0-9]+$ ]]; then
		echo "please enter a valid number"
		continue
	elif [[ $total_files -lt $guessed_total  ]]; then
		echo "Sorry, your guess is high than the actual total, please try agin"
		continue
	elif [[ $total_files -gt $guessed_total ]]; then
		echo "Sorry, your guess is low than the actual total, please try agin" 
	continue
else 
        echo "Congratulation your guess is correct! You are awsome!"
  break
	fi
done
}
check_guess
