# Keep Hydrated
# 
# Source: https://www.codewars.com/kata/582cb0224e56e068d800003c/train/shell
# 
# Nathan loves cycling.
# 
# Because Nathan knows it is important to stay hydrated, he drinks 0.5
# litres of water per hour of cycling.
# 
# You get given the time in hours and you need to return the number of
# litres Nathan will drink, rounded to the smallest value.
# 
# For example:
# 
# time = 3 ----> litres = 1
# 
# time = 6.7---> litres = 3
# 
# time = 11.8--> litres = 5

keepHydrated () {
	time=$1
	echo "$time / 2" | bc
}

# Tests
[[ $(keepHydrated 3) == 1 ]] && echo 'passed' || echo 'failed'
[[ $(keepHydrated 6.7) == 3 ]] && echo 'passed' || echo 'failed'
[[ $(keepHydrated 11.8) == 5 ]] && echo 'passed' || echo 'failed'
