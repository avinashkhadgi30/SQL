#! /bin/bash


# Operator Add, subtract, Multiple, Divide
#using expr
num1=10
num2=2

expr $num1 + $num2
expr $num1 - $num2
expr $num1 \* $num2
expr $num1 / $num2

#using echo
num_1=100
num_2=2

echo "$((num_1 + num_2))"
echo "$((num_1 - num_2))"
echo "$((num_1 * num_2))"
echo "$((num_1 / num_2))"
echo "$((num_1 % num_2))"

#using echo user input
read -p "Enter first no:-" num_1
read -p "Enter second no:-" num_2

echo "$((num_1 + num_2))"
echo "$((num_1 - num_2))"
echo "$((num_1 * num_2))"
echo "$((num_1 / num_2))"
echo "$((num_1 % num_2))"

# Echo number modulus
num1=5
num2=2
echo "$((num1 % num2))"
# Echo number exponent

var=$((8**2))
echo $var

