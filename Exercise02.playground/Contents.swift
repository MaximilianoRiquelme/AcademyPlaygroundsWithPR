import UIKit

class exercise02
{
    var arrayOfInts : [Int]
    var anInt : Int
    
    init ()
    {
        arrayOfInts = [Int]()
        anInt = 0
    }
    
    func lowerAndHighers(arrayOfInts : [Int], anInt : Int)
    {
        self.arrayOfInts = arrayOfInts
        self.anInt = anInt
        
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

var obj = exercise02()
obj.lowerAndHighers(arrayOfInts: [1, 2, 3, 4, 5], anInt: 2)
obj.lowerAndHighers(arrayOfInts: [1, 2, 3, 4, 5], anInt: 3)
