# Check For Factor
# 
# Source: https://www.codewars.com/kata/55cbc3586671f6aa070000fb/train/shell
# 
# This function should test if the factor is a factor of base.
# Return true if it is a factor or false if it is not.
# 
# About factors:
#
# Factors are numbers you can multiply together to get another number.
# 2 and 3 are factors of 6 because: 2 * 3 = 6
# 
#     You can find a factor by dividing numbers. If the remainder is
#     0 then the number is a factor.
#     You can use the mod operator (%) in most languages to check for
#     a remainder
# 
# For example 2 is not a factor of 7 because: 7 % 2 = 1
# 
# Note: base is a non-negative number, factor is a positive number.

checkForFactor () {
	base=$1 factor=$2	
	if (( base % factor == 0 )); then
		echo 'true'
		return
	fi
	echo 'false'
}

# Tests
[[ $(checkForFactor 10 2) == true ]] && echo 'passed' || echo 'failed'
[[ $(checkForFactor 63 7) == true ]] && echo 'passed' || echo 'failed'
[[ $(checkForFactor 2450 5) == true ]] && echo 'passed' || echo 'failed'
[[ $(checkForFactor 24612 3) == true ]] && echo 'passed' || echo 'failed'
[[ $(checkForFactor 9 2) == false ]] && echo 'passed' || echo 'failed'
[[ $(checkForFactor 653 7) == false ]] && echo 'passed' || echo 'failed'
[[ $(checkForFactor 2453 5) == false ]] && echo 'passed' || echo 'failed'
[[ $(checkForFactor 24617 3) == false ]] && echo 'passed' || echo 'failed'
