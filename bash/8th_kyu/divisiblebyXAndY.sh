Divisible By X and Y

Source: https://www.codewars.com/kata/5545f109004975ea66000086/train/shell

Create a function that checks if a number n is divisible by two numbers
x AND y. All inputs are positive, non-zero digits.

Examples:
1) n =   3, x = 1, y = 3 =>  true because   3 is divisible by 1 and 3
2) n =  12, x = 2, y = 6 =>  true because  12 is divisible by 2 and 6
Divisible By X and Y

Source: https://www.codewars.com/kata/5545f109004975ea66000086/train/shell

Create a function that checks if a number n is divisible by two numbers
x AND y. All inputs are positive, non-zero digits.

Examples:
1) n =   3, x = 1, y = 3 =>  true because   3 is divisible by 1 and 3
2) n =  12, x = 2, y = 6 =>  true because  12 is divisible by 2 and 6
3) n = 100, x = 5, y = 3 => false because 100 is not divisible by 3
4) n =  12, x = 7, y = 5 => false because  12 is neither divisible by 7 nor 5

divisibleByXAndY () {
        local n="$1" x="$2" y="$3"
}

# Tests

[[ $(divisibleByXAndY 3 1 3) == true ]] && echo 'passed' || echo 'failed'
[[ $(divisibleByXAndY 12 2 6) == true ]] && echo 'passed' || echo 'failed'
[[ $(divisibleByXAndY 100 5 3) == false ]] && echo 'passed' || echo 'failed'
[[ $(divisibleByXAndY 12 7 5) == false ]] && echo 'passed' || echo 'failed'
