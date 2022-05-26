# Third Angle Of A Triangle
# 
# Source: https://www.codewars.com/kata/5a023c426975981341000014/train/shell
# 
# You are given two interior angles (in degrees) of a triangle.
# 
# Write a function to return the 3rd.
# 
# Note: only positive integers will be tested.
# 
# https://en.wikipedia.org/wiki/Triangle

thirdAngle () {
	a=$1 b=$2
	echo $((180 - a - b))
}

# Tests
(( $(thirdAngle 30 60) == 90 )) && echo 'passed' || echo 'failed'
(( $(thirdAngle 60 60) == 60 )) && echo 'passed' || echo 'failed'
(( $(thirdAngle 43 78) == 59 )) && echo 'passed' || echo 'failed'
(( $(thirdAngle 10 20) == 150 )) && echo 'passed' || echo 'failed'
