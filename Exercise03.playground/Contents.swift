import UIKit
import XCTest

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
    func printIfPositiveInteger(number : String) -> Bool
    {
        guard let value = Int(number), value > 0 else
        {
            print("number is not a valid variable!!!")
            return false
        }
        
        print(value)
        return true
    }
}

class CheckerTest : XCTestCase
{
    func testPrintIfPositiveInteger()
    {
        let checker = Checker()
        XCTAssertEqual(checker.printIfPositiveInteger(number: "abc"), false)
        XCTAssertEqual(checker.printIfPositiveInteger(number: "-10"), false)
        XCTAssertEqual(checker.printIfPositiveInteger(number: "10"), true)
        XCTAssertEqual(checker.printIfPositiveInteger(number: "0"), false)
    }
}

CheckerTest.defaultTestSuite.run()
