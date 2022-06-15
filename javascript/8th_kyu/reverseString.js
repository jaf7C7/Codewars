// Reverse The String
// 
// Complete the solution so that it reverses the string passed into it.
// 
// 'world'  =>  'dlrow'
// 'word'   =>  'drow'

function solution(str){
	return str.split('').reverse().join('');
}

// Tests
console.log(solution('world') == 'dlrow');
console.log(solution('hello') == 'olleh');
console.log(solution('') == '');
console.log(solution('h') == 'h');
