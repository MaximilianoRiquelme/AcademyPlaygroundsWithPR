import UIKit
import XCTest

/*
 Write a function that receives 2 params, first is an array of integers and the second an integer number.
 The function should print the count of numbers inside the array that are lower or greater than the second param.

 For example:

 Array is: [110, 20, 100, 0, 200]

 Int number is: 100

 Result:

 “There are 2 numbers lower and 2 greater than 100”
 */

class Counter
{
    var arrayOfInts : [Int]
    var anInt : Int
    
    init ()
    {
        arrayOfInts = [Int]()
        anInt = 0
    }
    
    /// Counts how many numbers are lower and higher than a specified integer.
    /// - Parameters:
    ///   - arrayOfInts: Array of integers
    ///   - anInt: The specific integer to consider.
    func getLowersAndHighersThan(arrayOfInts : [Int], anInt : Int)
    {
        var lowers = 0
        var highers = 0
        
        if(arrayOfInts.isEmpty)
        {
            print("The array is empty")
        }
        else
        {
            for index in self.arrayOfInts
            {
                if(index < self.anInt)
                {
                    lowers+=1
                }
                else if (index > self.anInt)
                {
                    highers+=1
                }
            }
            
            print("There are \(lowers) numbers lower and \(highers) greater than \(self.anInt)")
        }
    }
}

var counter = Counter()

var arrayOfInts = [1, 2, 3, 4, 5]

counter.getLowersAndHighersThan(arrayOfInts: arrayOfInts, anInt: 2)
counter.getLowersAndHighersThan(arrayOfInts: arrayOfInts, anInt: 3)
counter.getLowersAndHighersThan(arrayOfInts: arrayOfInts, anInt: 1)
counter.getLowersAndHighersThan(arrayOfInts: arrayOfInts, anInt: 5)

