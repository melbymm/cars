#! /bin/bash
# Cars.sh
# Mitchell Melby

N=0
input="My_old_cars"
while [ $N -ne 1 ]
do
	echo "type the number 1 to enter a new car"
	echo "type the number 2 to display the list of cars"
	echo "type the number 3 to quit and exit the program"
	
	read num

	case $num in
	1) echo "Enter year of car"
	read year
	echo "Enter make of car"
	read make
	echo "Enter model of car"
	read model

	ts="${year}:${make}:${model}"
	echo "$ts" >> $input;;
	
	2) while read -r line
	do
		echo "$line"
	done < "$input";;

	3) echo "Goodbye"
	exit 0;;
	esac
done
