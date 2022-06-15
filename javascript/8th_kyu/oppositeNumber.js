/*
 * Opposite Number
 * 
 * Source: https://www.codewars.com/kata/56dec885c54a926dcd001095/train/javascript
 * 
 * Very simple, given an integer or a floating-point number, find its opposite.
 * 
 * Examples:
 * 
 * 1: -1
 * 14: -14
 * -34: 34
 */

function opposite(n) {
	return -n;
}

// Tests
console.log(opposite(1) == -1);
console.log(opposite(14) == -14);
console.log(opposite(-34) == 34);
