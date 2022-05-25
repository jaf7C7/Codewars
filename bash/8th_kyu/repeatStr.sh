# String Repeat
# 
# Source: https://www.codewars.com/kata/57a0e5c372292dd76d000d7e/train/shell
# 
# Write a function called repeatStr which repeats the given string string
# exactly n times.

repeatStr () {
	local repeat=$1 string=$2
	for (( i=0; i < repeat; i++ )); do
		printf '%s' "$string"
	done
}

# Tests
[[ $(repeatStr 6 "I") == IIIIII ]] && echo 'passed' || echo 'failed'
[[ $(repeatStr 5 "Hello") == HelloHelloHelloHelloHello ]] && echo 'passed' \
	|| echo 'failed'
