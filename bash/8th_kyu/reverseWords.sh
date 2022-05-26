# Reversed Words
# 
# Source: https://www.codewars.com/kata/51c8991dee245d7ddf00000e/train/shell
# 
# Complete the solution so that it reverses all of the words within the
# string passed in.
# 
# Example:
# 
# "The greatest victory is that which requires no battle" --> "battle no
# requires which that is victory greatest The"

reverseWords () {
	for word in $*; do
		str="$word${str+ $str}"
	done
	echo "$str"
}


# Tests
in="The greatest victory is that which requires no battle"
out="battle no requires which that is victory greatest The"
[[ $(reverseWords "$in") == $out ]] && echo 'passed' || echo 'failed'
in="hello world!"
out="world! hello"
[[ $(reverseWords "$in") == $out ]] && echo 'passed' || echo 'failed'
