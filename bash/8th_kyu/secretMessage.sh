# Jenny's Secret Message
# 
# Source: https://www.codewars.com/kata/55225023e1be1ec8bc000390/train/shell
# 
# Jenny has written a function that returns a greeting for a user. However,
# she's in love with Johnny, and would like to greet him slightly
# different. She added a special case to her function, but she made
# a mistake.
# 
# secretMessage () {
# 	if [ "$1" -eq "Johnny" ]; then
# 		echo "Hello. my Love!";
# 	fi
# 	echo "Hello, $1!"
# }
#
# Can you help her?

secretMessage () {
	if [[ $1 == Johnny ]]; then
		echo "Hello, my Love!"
	else
		echo "Hello, $1!"
	fi
}

# Tests
[[ $(secretMessage 'Alan') == 'Hello, Alan!' ]] && echo 'passed' \
	|| echo 'failed'
[[ $(secretMessage 'Johnny') == 'Hello, my Love!' ]] && echo 'passed' \
	|| echo 'failed'
