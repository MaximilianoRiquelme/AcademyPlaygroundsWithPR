import UIKit

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
    func howFarIsItFromMe(distance : UInt)
    {
        switch distance
        {
        case 0:
            print("Here")
        case 1..<5:
            print("Immediate Vicinity")
        case 5...15:
            print("Near")
        case 16...40:
            print("Kind of Far")
        default:
            print("Far")
        }
    }
}

var measurer = Measurer()
measurer.howFarIsItFromMe(distance: 0)
measurer.howFarIsItFromMe(distance: 1)
measurer.howFarIsItFromMe(distance: 4)
measurer.howFarIsItFromMe(distance: 5)
measurer.howFarIsItFromMe(distance: 6)
measurer.howFarIsItFromMe(distance: 15)
measurer.howFarIsItFromMe(distance: 16)
measurer.howFarIsItFromMe(distance: 40)
measurer.howFarIsItFromMe(distance: 41)
