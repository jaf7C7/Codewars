# Remove First And Last Character
# 
# Source https://www.codewars.com/kata/56bc28ad5bdaeb48760009b0/train/shell
# 
# It's pretty straightforward. Your goal is to create a function that
# removes the first and last characters of a string. You're given one
# parameter, the original string. You don't have to worry with strings
# with less than two characters.

removeChar () {
	echo "${1:1:${#1} - 2}"	
}

# Tests
[[ $(removeChar abc) == b ]] && echo 'passed' || echo 'failed'
[[ $(removeChar banana) == anan ]] && echo 'passed' || echo 'failed'
