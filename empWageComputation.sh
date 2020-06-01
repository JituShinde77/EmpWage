echo "Welcome to Employee Wage Computation"

#Constants
ABSENT=0
PRESENT=1
PART_TIME=2
PART_TIME_HOURS=4
WAGE_PER_HOURS=20
WORKING_DAYS_PER_MONTH=20
WORKING_HOURS=8
PART_TIME_HOURS=4

#VARIABLES
totalWage=0
totalWorkingHrs=0
totalWorkingDays=0

while [[ $totalWorkingHrs -lt 100 && $totalWorkingDays -lt 20 ]]
do
        isPresent=$(( RANDOM % 3 ))
        ((totalWorkingDays++))
        case $isPresent in
                $PRESENT)
                echo "Present"
                dailyWage=$(( $WAGE_PER_HOURS * $WORKING_HOURS ))
                totalWage=$(( $totalWage + $dailyWage ))
                totalWorkingHrs=$(( $totalWorkingHrs + $WORKING_HOURS ))
                ;;
                $PART_TIME)
                echo "Part time"
                dailyWage=$(( $WAGE_PER_HOURS * $PART_TIME_HOURS ))
                totalWage=$(( $totalWage + $dailyWage ))
                totalWorkingHrs=$(( $totalWorkingHrs + $WORKING_HOURS ))
                ;;
                $ABSENT)
                echo "Absent"
                ;;
        esac

done

echo $totalWage
