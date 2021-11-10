import UIKit

var greeting = "Binary Search"

/*
 Normaly in Binary Search can be sorted for true running, if array not sorted can be edited this way.
 
 What is the Binary Search ?
 
 A better approach is the binary search algorithm. In short, binary search works by constantly dividing the array of numbers in half, until we’ve found the number we’re looking for. Because the array is sorted, we can use logic to figure out in which half of the array the number is.
 */


//First Method


var numbers = [1,3,4,5,6,7,8,9,11,22,33,44,55,2,66]
//numbers.sort()

func binarySearchForSearchValue(searchValue: Int, array: [Int]) -> Bool {
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
       print("middle value: \(middleValue), leftIndex: \(leftIndex) , rightIndex: \(rightIndex), [\(array[leftIndex]) , \(array[rightIndex])]")
        
        if middleValue == searchValue {
            return true
        }
        
        else if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
        
        else if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
    }
    
    return false
}


print(binarySearchForSearchValue(searchValue: 23 ,array: numbers))



// Second Method
func binarySearch<T: Comparable>(array: [T], key: T, range: Range<Int>) -> Int? {
  if range.lowerBound >= range.upperBound {
    return nil
  } else {
    let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
    
    if array[midIndex] > key {
        print("1 e girildi")
      return binarySearch(array: array, key: key, range: range.lowerBound ..< midIndex)
        
    } else if array[midIndex] < key {
        print("2 e girildi")
      return binarySearch(array: array, key: key, range: midIndex + 1 ..< range.upperBound)
       
    } else {
      return midIndex
    }
  }
}

// How to use:
let array = [10, 17, 19, 20 ,25, 27, 32, 43, 55]
print(binarySearch(array: array, key: 55, range: 0 ..< array.count))

 


