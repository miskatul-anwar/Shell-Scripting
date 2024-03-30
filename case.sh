#! /usr/bin/bash
vehicle=$1
case $vehicle in
"car")
	echo "Rent of $vehicle is 100 dollar"
	;;
"van")
	echo "Rent of $vehicle is 20 dollar"
	;;
"bicycle")
	echo "Rent of $vehicle is 45 dollar"
	;;
"truck")
	echo "Rent of $vehicle is 90 dollar"
	;;
*)
	echo "Unknown vehicle"
	;;
esac
