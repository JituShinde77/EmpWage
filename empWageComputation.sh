echo "Welcome to Employee Wage Computation"

# Constants
WAGE_PER_HOURS=20
WORKING_HOURS=8
PART_TIME_HOURS=4

isPresent=$(( RANDOM % 3 ))
if [ $isPresent -eq 1 ]
then
	echo "Present"
	dilyWage=$(( $WAGE_PER_HOURS * $WORKING_HOURS ))
elif [ $isPresent -eq 2 ]
then
	echo "Part time"
	dailyWage=$(( $WAGE_PER_HOURS * $PART_TIME_HOURS ))
elif [ $isPresent -eq 0 ]
then
	echo "Absent"
fi
