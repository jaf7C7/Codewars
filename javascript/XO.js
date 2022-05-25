/*
 * Exes and Ohs
 * 
 * Source: https://www.codewars.com/kata/55908aad6620c066bc00002a
 * 
 * Check to see if a string has the same amount of 'x's and 'o's. The method
 * must return a boolean and be case insensitive. The string can contain
 * any char.
 * 
 * Examples input/output:
 * 
 * XO("ooxx") => true
 * XO("xooxx") => false
 * XO("ooxXm") => true
 * XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
 * XO("zzoo") => false
 */

function XO(str) {
	let x=0, o=0;
	for (let char of str) {
		if ('Xx'.includes(char)) x++;
		if ('oO'.includes(char)) o++;
	}
	return x + o == 0 ? true : x == o;
}

// Tests
console.log(XO("ooxx") == true);
console.log(XO("xooxx") == false);
console.log(XO("ooxXm") == true);
console.log(XO("zpzpzpp") == true);
console.log(XO("zzoo") == false);
