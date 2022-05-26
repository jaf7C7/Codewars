# Expressions Matter
# 
# Source: https://www.codewars.com/kata/5ae62fcf252e66d44d00008e
# 
# Task
# 
#     Given three integers a ,b ,c, return the largest number obtained
#     after inserting the following operators and brackets: +, *, ()
# 
#     In other words , try every combination of a,b,c with [*+()] , and
#     return the Maximum Obtained Consider an Example :
# 
# With the numbers are 1, 2 and 3 , here are some ways of placing signs
# and brackets:
# 
#     1 * (2 + 3) = 5
#     1 * 2 * 3 = 6
#     1 + 2 * 3 = 7
#     (1 + 2) * 3 = 9
# 
# So the maximum value that you can obtain is 9.
# 
# Notes
# 
#     * The numbers are always positive.
#     * The numbers are in the range (1  ≤  a, b, c  ≤  10).
#     * You can use the same operation more than once.
#     * It's not necessary to place all the signs and brackets.
#     * Repetition in numbers may occur .
#     * You cannot swap the operands. For instance, in the given example
#       you cannot get expression (1 + 3) * 2 = 8.
# 
# Input >> Output Examples:
# 
# 	expressionsMatter(1,2,3)  ==>  return 9
# 
# Explanation:
# 
# After placing signs and brackets, the Maximum value obtained from the
# expression (1+2) * 3 = 9.
# 
# 	expressionsMatter(1,1,1)  ==>  return 3
# 
# Explanation:
# 
# After placing signs, the Maximum value obtained from the expression is
# 1 + 1 + 1 = 3.
# 
# 	expressionsMatter(9,1,1)  ==>  return 18
# 
# Explanation:
# 
# After placing signs and brackets, the Maximum value obtained from the
# expression is 9 * (1+1) = 18.

# TODO: What if non-integers? Then `bc` extravaganza.
expressionsMatter () {
	max=0
	a=$(( $1 + $2 + $3 ))
	b=$(( $1 + $2 * $3 ))
	c=$(( ($1 + $2) * $3 ))
	d=$(( $1 * $2 * $3 ))
	e=$(( $1 * $2 + $3 ))
	f=$(( $1 * ($2 + $3) ))
	for expr in $a $b $c $d $e $f; do
		(( expr > max )) && max=$expr
	done
	echo $max
}

# Tests
[[ $(expressionsMatter 2 1 2) == 6 ]] && echo 'passed' || echo 'failed'
[[ $(expressionsMatter 2 1 1) == 4 ]] && echo 'passed' || echo 'failed'
[[ $(expressionsMatter 2 2 4) == 16 ]] && echo 'passed' || echo 'failed'
[[ $(expressionsMatter 3 3 3) == 27 ]] && echo 'passed' || echo 'failed'
[[ $(expressionsMatter 1 1 1) == 3 ]] && echo 'passed' || echo 'failed'
[[ $(expressionsMatter 1 2 3) == 9 ]] && echo 'passed' || echo 'failed'
[[ $(expressionsMatter 1 3 1) == 5 ]] && echo 'passed' || echo 'failed'
[[ $(expressionsMatter 2 2 2) == 8 ]] && echo 'passed' || echo 'failed'
[[ $(expressionsMatter 5 1 3) == 20 ]] && echo 'passed' || echo 'failed'
[[ $(expressionsMatter 3 5 7) == 105 ]] && echo 'passed' || echo 'failed'
[[ $(expressionsMatter 5 6 1) == 35 ]] && echo 'passed' || echo 'failed'
[[ $(expressionsMatter 1 6 1) == 8 ]] && echo 'passed' || echo 'failed'
[[ $(expressionsMatter 2 6 1) == 14 ]] && echo 'passed' || echo 'failed'
[[ $(expressionsMatter 6 7 1) == 48 ]] && echo 'passed' || echo 'failed'
[[ $(expressionsMatter 2 10 3) == 60 ]] && echo 'passed' || echo 'failed'
[[ $(expressionsMatter 1 8 3) == 27 ]] && echo 'passed' || echo 'failed'
[[ $(expressionsMatter 9 7 2) == 126 ]] && echo 'passed' || echo 'failed'
[[ $(expressionsMatter 1 1 10) == 20 ]] && echo 'passed' || echo 'failed'
[[ $(expressionsMatter 9 1 1) == 18 ]] && echo 'passed' || echo 'failed'
[[ $(expressionsMatter 10 5 6) == 300 ]] && echo 'passed' || echo 'failed'
[[ $(expressionsMatter 1 10 1) == 12 ]] && echo 'passed' || echo 'failed'
