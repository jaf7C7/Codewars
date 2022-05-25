# Opposite Number
# 
# Source: https://www.codewars.com/kata/56dec885c54a926dcd001095/train/shell
# 
# Very simple, given an integer or a floating-point number, find its opposite.
# 
# Examples:
# 1: -1
# 14: -14
# -34: 34

oppositeNumber () {
	echo "$1 * -1" | bc -l
}

# Tests
[[ $(oppositeNumber 1) == -1 ]] && echo 'passed' || echo 'failed'
[[ $(oppositeNumber 14) == -14 ]] && echo 'passed' || echo 'failed'
[[ $(oppositeNumber 34) == -34 ]] && echo 'passed' || echo 'failed'
[[ $(oppositeNumber 5.67) == -5.67 ]] && echo 'passed' || echo 'failed'
