echo "Welcome to Employee Wage Computation"

#Constants
ABSENT=0
PRESENT=1
PART_TIME=2
WAGE_PER_HOURS=20
WORKING_DAYS_PER_MONTH=20

#VARIABLES
totalWage=0
totalWorkingHrs=0
totalWorkingDays=0
cnt=0

declare -a dailyWage
declare -a totalDailyWage

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
        #((totalWorkingDays++))
	workingHrs=$( getWorkHrs $isPresent )
        dailyWage[totalWorkingDays]=$(( $WAGE_PER_HOURS * $workingHrs ))
	totalWage=$(( $totalWage + ($WAGE_PER_HOURS * $workingHrs) ))
	totalDailyWage[$totalWorkingDays]=$totalWage
        totalWorkingHrs=$(( $totalWorkingHrs + $workingHrs ))
	((totalWorkingDays++))

done

for (( i=0; i<$totalWorkingDays; i++ ))
do
	echo ${dailyWage[$i]}" "${totalDailyWage[$i]}
done

echo $totalWage
echo ${dailyWage[@]}

echo ${totalDailyWage[@]}
