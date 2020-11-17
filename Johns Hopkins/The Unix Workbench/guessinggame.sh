#!/usr/bin/env bash

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Please enter your guess"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Your guess is LESS then the true number"
        elif [ $number -gt $true_ans ]
        then
            echo "Your guess is GREATER then the true number"
        else
            echo " Congratulation, you are Correct!"
        break;
        fi
    done
}
echo "Guess the files number in the current directory!"
guess
