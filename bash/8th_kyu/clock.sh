# Clock
# 
# Source: https://www.codewars.com/kata/55f9bca8ecaa9eac7100004a/train/shell
# 
# Clock shows h hours, m minutes and s seconds after midnight.
# 
# Your task is to write a function which returns the time since midnight
# in milliseconds.
# 
# Example:
# 
# h = 0
# m = 1
# s = 1
# 
# result = 61000

clock () {
	h=$1 m=$2 s=$3
	echo $(((h * 3600 + m * 60 + s) * 1000))
}

# Tests
[[ $(clock 0 1 1) == 61000 ]] && echo 'passed' || echo 'failed'
[[ $(clock 1 1 1) == 3661000 ]] && echo 'passed' || echo 'failed'
[[ $(clock 0 0 0) == 0 ]] && echo 'passed' || echo 'failed'
[[ $(clock 1 0 1) == 3601000 ]] && echo 'passed' || echo 'failed'
[[ $(clock 1 0 0) == 3600000 ]] && echo 'passed' || echo 'failed'
