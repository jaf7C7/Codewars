# Returning Strings
# 
# Source: https://www.codewars.com/kata/55a70521798b14d4750000a4/train/shell
# 
# Make a function that will return a greeting statement that uses an input;
# your program should return, "Hello, <name> how are you doing today?".

greet () {
	name="$1"
	echo "Hello, $name how are you doing today?"
}

# Tests
[[ $(greet shell) == 'Hello, shell how are you doing today?' ]] \
	&& echo 'passed' || echo 'failed'
