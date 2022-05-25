# Even Or Odd
# 
# Source: https://www.codewars.com/kata/53da3dbb4a5168369a0000fe
# 
# Write a script that takes an integer as an argument and returns "Even"
# for even numbers or "Odd" for odd numbers.

evenOrOdd () {
	if (( $1 % 2 == 0 )); then
		echo 'even'
	else
		echo 'odd'
	fi
}

# Tests
for n in 0 2 4 78 100000 1545452 -2 -10 -123456; do
	printf '%s: ' "$n"
	if [[ $(evenOrOdd $n) == even ]]; then
		echo 'passed'
	else
		echo 'failed'
	fi
done
for n in 1 3 5 77 100001 1545455 -1 -3 -9 -12345; do
	printf '%s: ' "$n"
	if [[ $(evenOrOdd $n) == odd ]]; then
		echo 'passed'
	else
		echo 'failed'
	fi
done
