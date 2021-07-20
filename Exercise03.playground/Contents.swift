import UIKit

/*
 Rewrite the following function using guard statements. You can use 2 guard statements or 1 compound guard statement. Actually, try both. :-)

 func printIfPositiveInteger(number: String) {

     if let value = Int(number) {

         if value > 0 {

             print(value)

         }

     }

 }

 printIfPositiveInteger(number: "abc")

 printIfPositiveInteger(number: "-10")

 printIfPositiveInteger(number: "10")
 */

class Checker
{
    func printIfPositiveInteger(number : String)
    {
        guard let value = Int(number), value > 0 else
        {
            print("number is not a valid variable!!!")
            return
        }
        
        print(value)
    }
}

var checker = Checker()

checker.printIfPositiveInteger(number : "abc")
checker.printIfPositiveInteger(number : "-10")
checker.printIfPositiveInteger(number : "10")
