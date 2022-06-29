#! /bin/bash

#case statement

var=10
case $var in
	10)
		echo "It is 10"
		;;
	20)
		echo "It is 20"
		;;
	30)
		echo "It is 30"
		;;	
	*)	
		echo "No. is not 10,20,30"
		;;
esac

# user input case statement
# printf = echo
# scanf= read
echo "select choise
	 1) addition
	 2) subtraction
 	 3) multiplication
 	 4) Division"
read -p "select choise:-" choice 
case $choice in
	1)
		echo "Addition"
		read -p "Enter first no:- "  num_1
		read -p "Enter second no:- "  num_2

		echo " Addition is $((num_1 + num_2))"
		;;
	2)
		echo "Subtraction"
		read -p "Enter first no:- " num_1
		read -p "Enter second no:- " num_2
		echo "Subtraction is $((num_1 - num_2))"
		;;
	3)
		echo "Multiplication"
		read -p "Enter first no:- " num_1
		read -p "Enter second no:- " num_2
		echo "Multiplication is $((num_1 * num_2))"
		;;	
		
	4)
		echo "Division"
		read -p "Enter first no:- " num_1
		read -p "Enter second no:- " num_2
		echo "Division is $((num_1 / num_2))"
		;;
	*)	
		echo "Sorry ! You have enter wrong choise!"
		;;
esac

