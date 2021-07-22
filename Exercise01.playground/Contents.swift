import UIKit
import XCTest

/*
 Given the variable distance:

 let distance: UInt = 10

 Write a switch using interval matching that...

 Prints "Here" if distance is 0.

 Prints "Immediate vicinity" if distance is less than 5 but more than 0.

 Prints "Near" if distance is between 5 and 15, including 15.

 Prints "Kind of far" if distance is more than 15 and less or equal to 40.

 Prints "Far" if distance exceeds 40.
 */

class Measurer
{
    /// Returns a string indicating how far is an object from you.
    /// - Parameter distance: The distance at which the object is from you as a Positive Integer.
    func howFarIsItFromMe(distance : UInt) -> String
    {
        switch distance
        {
        case 0:
            print("Here")
            return ("Here")
        case 1..<5:
            print("Immediate Vicinity")
            return ("Immediate Vicinity")
        case 5...15:
            print("Near")
            return ("Near")
        case 16...40:
            print("Kind of Far")
            return ("Kind of Far")
        default:
            print("Far")
            return ("Far")
        }
    }
}

class MeasurerTest : XCTestCase
{
    /*
     Tests for problematic use cases.
     */
    func testHowFarIsFromMe()
    {
        let measurer = Measurer()
        XCTAssertEqual(measurer.howFarIsItFromMe(distance: 0), "Here")
        XCTAssertEqual(measurer.howFarIsItFromMe(distance: 1), "Immediate Vicinity")
        XCTAssertEqual(measurer.howFarIsItFromMe(distance: 4), "Immediate Vicinity")
        XCTAssertEqual(measurer.howFarIsItFromMe(distance: 5), "Near")
        XCTAssertEqual(measurer.howFarIsItFromMe(distance: 15), "Near")
        XCTAssertEqual(measurer.howFarIsItFromMe(distance: 16), "Here")
        XCTAssertEqual(measurer.howFarIsItFromMe(distance: 40), "Kind of Far")
        XCTAssertEqual(measurer.howFarIsItFromMe(distance: 41), "Far")
    }
}

MeasurerTest.defaultTestSuite.run()
