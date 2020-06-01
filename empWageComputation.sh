echo "Welcome to Employee Wage Computation"

isPresent=$(( RANDOM % 2 ))
if [ $isPresent -eq 1 ]
then
	echo "Present"
elif [ $isPresent -eq 0 ]
then
	echo "Absent"
fi
