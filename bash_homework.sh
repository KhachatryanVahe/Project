#!/bin/bash

function min()
{
	min=$arr

	for i in "${arr[@]}";			#loop foreach
	do
		if [ $min -gt $i ]		#Checks min is greate than variable i
		then
			(( min=$i ))
		fi
	done
	
}

function max()
{
	max=$arr

	for i in "${arr[@]}";			#Loop foreach
	do
		if [ $max -lt $i ]		#Checked max is less than variable i
		then
			(( max=$i ))
		fi
	done
	
}

function sum()
{
	sum=0
	for i in "${arr[@]}";		#Loop foreach 
	do
		(( sum+=$i ))
	done
	
}


case $1 in
"min")
	shift		#Shift all arguments to the left (original $1 gets lost)
	arr=("$@")
	min 
	echo "min = $min"
	;;
"max")
	shift
	arr=("$@")
	max
	echo "max = $max"
	;;
"sum")
	shift
	arr=("$@")
	sum ${arr[@]}
	echo "sum = $sum"
	;;
esac

