// Sum Of Positive
//
// Source: https://www.codewars.com/kata/5715eaedb436cf5606000381
// 
// You get an array of numbers, return the sum of all of the positives ones.
// 
// Example [1,-4,7,12] => 1 + 7 + 12 = 20
// 
// Note: if there is nothing to sum, the sum is default to 0.

function positiveSum(arr) {
	return arr.filter(e => e > 0).reduce((a, b) => a + b, 0);
}

// Tests
console.log(positiveSum([1,2,3,4,5]) == 15);
console.log(positiveSum([1,-2,3,4,5]) == 13);
console.log(positiveSum([]) == 0);
console.log(positiveSum([-1,-2,-3,-4,-5]) == 0);
console.log(positiveSum([-1,2,3,4,-5]) == 9);
console.log(positiveSum([1,-4,7,12]) == 20);
