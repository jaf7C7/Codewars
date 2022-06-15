/*
 * Even Or Odd
 * 
 * Source: https://www.codewars.com/kata/53da3dbb4a5168369a0000fe/train/javascript
 * 
 * Create a function that takes an integer as an argument and returns "Even"
 * for even numbers or "Odd" for odd numbers.
 */

function evenOrOdd(n) {
	return n % 2 ? 'Odd' : 'Even';
}

// Tests
console.log(evenOrOdd(2) == "Even");
console.log(evenOrOdd(7) == "Odd");
console.log(evenOrOdd(-42) == "Even");
console.log(evenOrOdd(-7) == "Odd");
console.log(evenOrOdd(0) == "Even");
