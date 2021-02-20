#!/bin/bash
count=1
while (($count<100))
do
	echo $count
	(( count+=2 ))
done
