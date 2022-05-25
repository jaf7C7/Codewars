/*
 * Is This A Triangle?
 * 
 * Source: https://www.codewars.com/kata/56606694ec01347ce800001b
 * 
 * Implement a function that accepts 3 integer values a, b, c. The function
 * should return true if a triangle can be built with the sides of given
 * length and false in any other case.
 * 
 * (In this case, all triangles must have surface greater than 0 to be
 * accepted).
 */

function isTriangle(a,b,c) {
	return a + b + c > 2 * Math.max(a, b, c);
}

// Tests
console.log(isTriangle(1,2,2) == true);
console.log(isTriangle(7,2,2) == false);
