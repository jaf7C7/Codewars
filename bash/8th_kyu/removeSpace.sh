# Remove String Spaces
# 
# Source: https://www.codewars.com/kata/57eae20f5500ad98e50002c5/train/shell
# 
# Simple, remove the spaces from the string, then return the resultant string.

removeSpace () {
	local var="$1"
	echo "${var// /}"
}

# Tests

str='8 j 8   mBliB8g  imjB8B8  jl  B'
res='8j8mBliB8gimjB8B8jlB'
[[ $(removeSpace "$str") == $res ]] && echo 'passed' || echo 'failed'

str='8 8 Bi fk8h B 8 BB8B B B  B888 c hl8 BhB fd'
res='88Bifk8hB8BB8BBBB888chl8BhBfd'
[[ $(removeSpace "$str") == $res ]] && echo 'passed' || echo 'failed'

str='8aaaaa dddd r     '
res='8aaaaaddddr'
[[ $(removeSpace "$str") == $res ]] && echo 'passed' || echo 'failed'

str='jfBm  gk lf8hg  88lbe8 '
res='jfBmgklf8hg88lbe8'
[[ $(removeSpace "$str") == $res ]] && echo 'passed' || echo 'failed'

str='8j aam'
res='8jaam'
[[ $(removeSpace "$str") == $res ]] && echo 'passed' || echo 'failed'
