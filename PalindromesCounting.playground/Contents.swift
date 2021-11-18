import UIKit

var greeting = "Hello, playground"

//Palindrome is the same look left and look right.For instance 9119, 1551, 3003 , 12521..

func isPalindrome(_ value: String) -> Bool
{
    let len = value.count / 2

    for i in 0..<len
    {
        let start = value.index(value.startIndex, offsetBy: i)
        let end = value.index(value.endIndex, offsetBy: (i * -1) - 1)

        if value[start] != value[end] {
            return false
        }
    }

    return true
}

print(isPalindrome("1991"))
print(isPalindrome("madam"))



