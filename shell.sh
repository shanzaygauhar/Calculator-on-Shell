#!/bin/bash
echo -n "Enter a number between 1 and 100, both inclusive: "
read operand1
if [[ $operand1 =~ [0-9]+$ ]]; then
	if(( $operand1 >0 && $operand1<101 )); then
		echo -e -n "Enter the operation you want to perform: \n'a' for Addition \n's' for Subtraction \n'm' for Multiplication \n'd' for Division\n"
		read operator
		case $operator in
			"a" | "m" | "d" | "s" )
			echo -n "Enter a number between 1 and 100, both inclusive: "
			read operand2

			result=0
			if [[ $operand2 =~ [0-9]+$ ]]; then
				if(($operand2>0 && $operand2< 101)); then
					if [ $operator == "a" ] ; then
						 result=$(($operand1 + $operand2));
					elif [ $operator == "s" ] ; then
						 result=$(($operand1 - $operand2));
					elif [ $operator == "m" ] ; then
						 result=$(($operand1 * $operand2));
					elif [ $operator == "d" ] ; then
						 result=$(($operand1 / $operand2));
					fi
					echo -e  "The result is: $result\n"
			
				else
					echo -e "The operand is out of range\n"
				fi
			else 
				echo -e "The operand is invalid\n"
			fi
			;;
			*)
				echo -e "The operator is not valid. Try Again.\n"
			;;
		esac
	else
		echo -e "The operand is out of range\n"
	fi
else
	echo -e "The operand is invalid\n"
fi

