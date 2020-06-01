echo "Welcome to Employee Wage Computation"

# Constants
WAGE_PER_HOURS=20
WORKING_HOURS=8
PART_TIME_HOURS=4
ABSENT=0
PRESENT=1
PART_TIME=2

isPresent=$(( RANDOM % 3 ))

case $isPresent in
	$PRESENT)
	echo "Present"
	dilyWage=$(( $WAGE_PER_HOURS * $WORKING_HOURS ))
	;;
	$PART_TIME)
	echo "Part time"
	dailyWage=$(( $WAGE_PER_HOURS * $PART_TIME_HOURS ))
	;;
	$ABSENT)
	echo "Absent"
	;;
esac
