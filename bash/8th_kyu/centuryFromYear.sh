# Century From Year
# 
# Source: https://www.codewars.com/kata/5a3fe3dde1ce0e8ed6000097/train/shell
# 
# 
# The first century spans from the year 1 up to and including the year
# 100, the second century - from the year 101 up to and including the year
# 200, etc.
# 
# Given a year, return the century it is in.
# 
# Examples
# 1705 --> 18
# 1900 --> 19
# 1601 --> 17
# 2000 --> 20

centuryFromYear () {
	y="$1"
	c=$((y / 100))
	((y % 100 > 0)) && ((c++))
	echo "$c"
}

# Tests
[[ $(centuryFromYear 1705) == 18 ]] && echo 'passed' || echo 'failed'
[[ $(centuryFromYear 1900) == 19 ]] && echo 'passed' || echo 'failed'
[[ $(centuryFromYear 1601) == 17 ]] && echo 'passed' || echo 'failed'
[[ $(centuryFromYear 2000) == 20 ]] && echo 'passed' || echo 'failed'
