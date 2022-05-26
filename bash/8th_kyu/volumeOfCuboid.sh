# Volume Of A Cuboid
# 
# Source: https://www.codewars.com/kata/58261acb22be6e2ed800003a/train/shell
# 
# Bob needs a fast way to calculate the volume of a cuboid with three
# values: the length, width and height of the cuboid. Write a function to
# help Bob with this calculation.
# 
# In bash the script is ran with the following 3 arguments:
# length width height

volumeOfCuboid () {
	length=$1 width=$2 height=$3
	echo "$length * $width * $height" | bc
}

# Tests
[[ $(volumeOfCuboid 2 5 6) == 60 ]] && echo 'passed' || echo 'failed'
[[ $(volumeOfCuboid 6.3 3 5) == 94.5 ]] && echo 'passed' || echo 'failed'
