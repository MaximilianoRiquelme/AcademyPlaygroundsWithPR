import UIKit

class exercise03
{
    func printIfPsoitiveInteger(number : String)
    {
        guard let value = Int(number), value > 0 else
        {
            print("number is not a valid variable!!!")
            return
        }
        
        print(value)
    }
}

var obj = exercise03()

obj.printIfPsoitiveInteger(number : "abc")
obj.printIfPsoitiveInteger(number : "-10")
obj.printIfPsoitiveInteger(number : "10")
