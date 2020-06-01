echo "Welcome to Employee Wage Computation"

# Constants
WAGE_PER_HOURS=20
WORKING_HOURS=8

isPresent=$(( RANDOM % 2 ))
if [ $isPresent -eq 1 ]
then
	echo "Present"
	dilyWage=$(( $WAGE_PER_HOURS * $WORKING_HOURS ))
elif [ $isPresent -eq 0 ]
then
	echo "Absent"
fi
