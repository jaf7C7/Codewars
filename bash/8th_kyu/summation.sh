# Summation
# 
# Source: https://www.codewars.com/kata/55d24f55d7dd296eb9000030/train/shell
# 
# Write a program that finds the summation of every number from 1 to
# num. The number will always be a positive integer greater than 0.
# 
# For example:
# summation(2) -> 3
# 1 + 2
# 
# summation(8) -> 36
# 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8

summation () {
	local i lim="$1" sum=0
	for (( i=1; i <= lim; i++ )); do
		((sum += i))
	done
	printf '%s\n' "$sum"
}

# Test
[[ $(summation 2) == 3 ]] && echo 'passed' || echo 'failed'
[[ $(summation 8) == 36 ]] && echo 'passed' || echo 'failed'
