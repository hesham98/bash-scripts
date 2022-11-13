#!/bin/bash


num1=1
num2=2
function testLocalAndGlobal(){
	local num1=3
	num2=4
	echo "Inside function local num1=$num1, global num2=$num2"
}
echo "Before excute the function num1=$num1, num2=$num2"
echo
testLocalAndGlobal
echo
echo "Afer excute the function num1=$num1, num2=$num2"
