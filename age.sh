echo -e "Enter your age: \c"
read age
if [[ $age -gt 18 && $age -le 25 ]]; then
	echo "Juvenile"
elif [[ $age -gt 25 && $age -le 40 ]]; then
	echo "Phantom"

fi
