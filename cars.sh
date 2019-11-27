#! /bin/bash
# cars.sh
# Karolina Michalewska

echo "Please choose an option."
echo "1) Enter a new car."
echo "2) Display the list of cars."
echo "3) Quit and exit the program."
read option

while [[ "$option" != 3 ]]
do 
	case $option in 
		1)
			echo -n "You chose to enter a new car."
			echo ""
			echo -n "Enter the year: "
			read year
			echo -n "Enter the make: "
			read make
			echo -n "Enter the model: "
			read model
			newCar="$year:$make:$model"
			echo "$newCar" >> My_old_cars
			echo "Added: $newCar"
			;;

		2) 
			echo -n "2"
			echo ""
			echo "Your current inventory:"
			sorted=$(sort My_old_cars)
			echo "$sorted"
			;;
	esac
	echo "Please choose an option."
	echo "1) Enter a new car."
	echo "2) Display the list of cars."
	echo "3) Quit and exit the program."
	read option
done
echo "Program Exiting..."
echo "Thank You."
