//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var num = 70

/*
if num == 3 {
    print("num is 3")
} else if num == 5 {
    print("num is 5")
} else {
    print("default case")
}
*/


 

switch num {
    case 3:
        print("num is 3")
    case 5:
        print("num is 5")
    case 60 ... 100:
        print("Nice work!")
    default:
        print ("default case")
}

/*
 1. Convert the following switch statement to if statements or anything else you can come up with
 
 switch num {
 case 3:
 print("num is 3")
 case 5:
 print("num is 5")
 default:
 print ("default case")
 }
 
 2. Read chapter 1.6 of "App development with Swift"
 
 3. Bonus
 Add a single case in the switch statement in "1" that prints "Nice work!" each time the variable num has a value between 60 and 100.
 */