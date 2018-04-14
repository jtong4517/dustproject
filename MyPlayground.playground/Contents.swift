//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var num = 70

/*
 * Saturday 2018/3/24: Convert if-else chain to switch statement
    if num == 3 {
        print("num is 3")
    } else if num == 5 {
        print("num is 5")
    } else {
        print("default case")
    }
 
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
*/

func squareRoot (num: Double) -> Double {
    return sqrt(num);
}
print(squareRoot(num: 4))

struct animal {
    let name: String;
    let species: String;
    var age: Float;
}
var animal1 = animal(name: "Hydrogen", species: "Gas", age: 13491823899);
var animal2 = animal(name: "Lithium", species: "Alkali metals", age: 13491823898.99989284790213)

struct Course {
    let name: String;
    var members: Array<User>;
    let owner: Instructor;
}

struct Profile {
    var image: CVBuffer;
    var links: Array<String>;
    var friends: Array<User>;
}

struct User {
    var classes: Array<Course>;
    let name: String;
    var age: Int;
    var profile: Profile;
}

struct Instructor {
    // let user: User()
    
}

/*
struct Student {
    // let user: User
    
    var GPA: Double;
    
    init () {
        
    }
    
    func getGPA () -> Double {
        return GPA;
    }
    
    mutating func changeGPA (newGPA: Double) {
        GPA = newGPA;
    }
}

 */
