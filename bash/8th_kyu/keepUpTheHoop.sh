# Keep Up The Hoop
# 
# Source: https://www.codewars.com/kata/55cb632c1a5d7b3ad0000145/train/shell
# 
# Alex just got a new hula hoop, he loves it but feels discouraged because
# his little brother is better than him
# 
# Write a program where Alex can input (n) how many times the hoop goes
# round and it will return him an encouraging message :)
# 
#     If Alex gets 10 or more hoops, return the string "Great, now move
#     on to tricks".
#     [If he doesn't get 10 hoops, return the string "Keep
#     at it until you get it".

keepUpTheHoop () {
	n=$1
	(( n >= 10 )) && echo "Great, now move on to tricks"
	(( n < 10 )) && echo "Keep at it until you get it"
}

# Tests
[[ $(keepUpTheHoop 8) == "Keep at it until you get it" ]] && echo 'passed' \
	|| echo 'failed'
[[ $(keepUpTheHoop 12) == "Great, now move on to tricks" ]] && echo 'passed' \
	|| echo 'failed'
[[ $(keepUpTheHoop 10) == "Great, now move on to tricks" ]] && echo 'passed' \
	|| echo 'failed'
