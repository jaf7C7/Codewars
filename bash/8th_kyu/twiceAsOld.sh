# Twice As Old
# 
# Source: https://www.codewars.com/kata/5b853229cfde412a470000d0/train/shell
# 
# Your function takes two arguments:
# 
#     1. current father's age (years)
#     2. current age of his son (years)
# 
# Сalculate how many years ago the father was twice as old as his son
# (or in how many years he will be twice as old).

twiceAsOld () {
	dad=$1 son=$2
	(( years = dad - 2 * son ))
	echo ${years#-}
}

# Tests
(( $(twiceAsOld 36 7) == 22 )) && echo 'passed' || echo 'failed'
(( $(twiceAsOld 55 30) == 5 )) && echo 'passed' || echo 'failed'
(( $(twiceAsOld 42 21) == 0 )) && echo 'passed' || echo 'failed'
(( $(twiceAsOld 22 1) == 20 )) && echo 'passed' || echo 'failed'
(( $(twiceAsOld 29 0) == 29 )) && echo 'passed' || echo 'failed'
