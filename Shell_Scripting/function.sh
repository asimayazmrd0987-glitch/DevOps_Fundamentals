#!/bin/bash
function kill() { 
temp=0
while [ $temp -le 10 ]
do
	if (( temp % 2 == 0));
	then
	  echo $temp
	fi
	temp=$((temp + 1))
done
}
kill


