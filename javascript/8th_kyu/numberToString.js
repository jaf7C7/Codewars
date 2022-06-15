// Convert A Number To A String
//
// Source: https://www.codewars.com/kata/5265326f5fda8eb1160004c8
// 
// We need a function that can transform a number into a string.
// 
// What ways of achieving this do you know?
// Examples:
// 
// 123 --> "123"
// 999 --> "999"

function numberToString(num) {
	return String(num);
}

// Tests
console.log(numberToString(67) == '67');
console.log(numberToString(123) == '123');
console.log(numberToString(999) == '999');
