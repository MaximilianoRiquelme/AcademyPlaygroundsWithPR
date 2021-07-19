import UIKit

class exercise01
{
    let distance : UInt = 10
    
    func tellDistance()
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

var obj = exercise01()
//obj.distance = 5 //cant change value of distance because is a "let" constant
obj.tellDistance()
