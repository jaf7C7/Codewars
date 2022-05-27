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

# For integer arguments:
# expressionsMatter () {
# 	max=0
# 	a=$(( $1 + $2 + $3 ))
# 	b=$(( $1 + $2 * $3 ))
# 	c=$(( ($1 + $2) * $3 ))
# 	d=$(( $1 * $2 * $3 ))
# 	e=$(( $1 * $2 + $3 ))
# 	f=$(( $1 * ($2 + $3) ))
# 	for expr in $a $b $c $d $e $f; do
# 		(( expr > max )) && max=$expr
# 	done
# 	echo $max
# }

# To handle non-integers, use `bc`
expressionsMatter() {
	bc <<-EOI
	a=$1
	b=$2
	c=$3
	
	e[0] = (a + b + c)
	e[1] = (a + b * c)
	e[2] = ((a + b) * c)
	e[3] = (a * b * c)
	e[4] = (a * b + c)
	e[5] = (a * (b + c))

	m = 0
	for (i = 0; e[i]; i++) {
		if (e[i] > m) m = e[i]
	}
	m
	EOI
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
[[ $(expressionsMatter 51.26 0.20 89.30) == 4595.37 ]] \
	&& echo 'passed' || echo 'failed'
[[ $(expressionsMatter 5.18 50.23 5.87) == 1527.31 ]] \
	&& echo 'passed' || echo 'failed'
[[ $(expressionsMatter 77.20 4.55 22.91) == 8047.36 ]] \
	&& echo 'passed' || echo 'failed'
[[ $(expressionsMatter 92.14 87.93 94.27) == 763763.28 ]] \
	&& echo 'passed' || echo 'failed'
[[ $(expressionsMatter 0.47 98.32 2.26) == 223.26 ]] \
	&& echo 'passed' || echo 'failed'
[[ $(expressionsMatter 66.62 19.89 92.21) == 122184.70 ]] \
	&& echo 'passed' || echo 'failed'
[[ $(expressionsMatter 6.16 55.19 3.12) == 1060.70 ]] \
	&& echo 'passed' || echo 'failed'
[[ $(expressionsMatter 99.18 110.5 5.26) == 57646.39 ]] \
	&& echo 'passed' || echo 'failed'
[[ $(expressionsMatter 30.23 92.82 66.74) == 187268.43 ]] \
	&& echo 'passed' || echo 'failed'
