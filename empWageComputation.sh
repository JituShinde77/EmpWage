echo "Welcome to Employee Wage Computation"

#Constants
ABSENT=0
PRESENT=1
PART_TIME=2
PART_TIME_HOURS=4
WAGE_PER_HOURS=20
WORKING_DAYS_PER_MONTH=20


#VARIABLES
totalWage=0
totalWorkingHrs=0
totalWorkingDays=0

#Function for get working hrs
function getWorkHrs(){

	local empCheck=$1
	case $empCheck in
		$PRESENT)
			empHrs=8
		;;
		$PART_TIME)
			empHrs=4
		;;
		$ABSENT)
			empHrs=0
		;;
	esac
	echo $empHrs
}

while [[ $totalWorkingHrs -lt 100 && $totalWorkingDays -lt 20 ]]
do
        isPresent=$(( RANDOM % 3 ))
        ((totalWorkingDays++))
	 workingHrs=$( getWorkHrs $isPresent )
         dailyWage=$(( $WAGE_PER_HOURS * $workingHrs ))
         totalWage=$(( $totalWage + $dailyWage ))
         totalWorkingHrs=$(( $totalWorkingHrs + $workingHrs ))

done

echo $totalWage
