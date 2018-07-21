import AppKit

//: Playground - noun: a place where people can play
var str = "Hello, playground"

// what are structs used for:
/*
 Store things and create predefined properties
*/

// what are classes used for: same as

protocol whatPeopleDo {
    var thingsToDo: String { get }
    
    func moreInfo()
}

class Person: CustomStringConvertible, Equatable, Comparable, Codable/*, whatPeopleDo*/ {
    var footSize: Int
    var pantSize: Int
    var name: String
    
    var thingsToDo: String {
        return ("get more pants of size \(pantSize)")
    }
    
    init (givenFootSize: Int, givenPantSize: Int, givenName: String) {
        self.footSize = givenFootSize
        self.pantSize = givenPantSize
        self.name = givenName
    }
    
    //initialize person without providing the parameter names
    init (_ givenFootSize: Int, _ givenPantSize: Int, _ givenName: String) {
        self.footSize = givenFootSize
        self.pantSize = givenPantSize
        self.name = givenName
    }
    
    //provide different names for parameters
    init (hisSize givenFootSize: Int, hisPants givenPantSize: Int, hisName name: String) {
        self.footSize = givenFootSize
        self.pantSize = givenPantSize
        self.name = name
    }
    
    var description: String {
        return "This is \(name) and his pant size is \(pantSize)"
    }
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.pantSize == rhs.pantSize
    }
    
    static func < (lhs: Person, rhs: Person) -> Bool {
        return lhs.footSize < rhs.footSize
    }
}

var Alex = Person(givenFootSize: 5, givenPantSize: 5, givenName: "Amazon Alexa")
var Jeff = Person(4, 4, "Jeff")
var Kevn = Person(hisSize: 3, hisPants:3, hisName: "Kævun")

if (Jeff == Kevn) {
    print("Jeff and kevin have the same pant size")
}

class Supreme_Commander: CustomStringConvertible {
    var description: String {
        return "Supreme Commander \(name) has \(armySize) soldiers serving \(country)."
    }
    
    let name: String
    var armySize: Int
    var gatheredSize: Int = 0
    var strength: Int {
        didSet {
            if oldValue > 25 && strength <= 25 {
                print(name + "'s army is in critical condition.")
            }
            if oldValue > 10 && strength <= 10 {
                print("The war is almost lost for " + country + "!")
            }
            if oldValue < 50 && strength >= 50 {
                print(country + " has made a comeback.")
            }
        }
    }

    let country: String
    
    init (_ name: String, _ armySize: Int, _ country: String, _ strength: Int) {
        self.name = name
        self.armySize = armySize
        self.gatheredSize = Int(Double(armySize) * 0.2)
        self.country = country
        self.strength = strength
    }
    
    static func >> (lhs: Supreme_Commander, rhs: Supreme_Commander) -> Supreme_Commander {
        var numBattles = 0
        print("""
            ----===============<[ WAR DECLARED ]>===============----
            \(lhs.country) has declared war on \(rhs.country)!
            \(lhs.armySize) men are in reserve under \(lhs.name) of \(lhs.country).
            The defender \(rhs.country) has \(rhs.name) commanding a force of \(rhs.armySize) men.
            Odds are in the favor of \(lhs.armySize * lhs.strength > rhs.armySize * rhs.strength ? lhs.country : rhs.country).
            
            """)
        sleep(5)
        while lhs.strength > 0 && rhs.strength > 0 {
            if lhs.armySize * rhs.armySize < 0 {
                print("""
                    
                    ----===============<[ WAR CONCLUDED ]>==============----
                    \(lhs.armySize > rhs.armySize ? lhs.country : rhs.country) wins the war after \(numBattles) battles!
                    """)
                break
            }
            numBattles += 1
            print("""
                
                ----=========<[ BATTLE #\(numBattles) STARTED ]>=========----
                \(lhs.country) has \(lhs.gatheredSize) men present(\(lhs.armySize) total under command).
                \(rhs.country) has \(rhs.gatheredSize) troops, \(rhs.armySize) total reserve remaining.
                
                """)
            lhs.gatheredSize += Int(arc4random_uniform(10000))
            rhs.gatheredSize += Int(arc4random_uniform(10000))
            if lhs.gatheredSize > lhs.armySize {
                lhs.gatheredSize = lhs.armySize
            }
            if rhs.gatheredSize > rhs.armySize {
                rhs.gatheredSize = rhs.armySize
            }
            print(lhs.name + "'s gathered army has grown to " + String(lhs.gatheredSize) + ".")
            print(rhs.name + " has gathered an army of " + String(rhs.gatheredSize) + ".")
            if Int(arc4random_uniform(2)) == 1 {
                let attackStrength = Int(Double(lhs.gatheredSize) * Double(lhs.strength) / 500.0 * Double(arc4random_uniform(2)))
                rhs.gatheredSize -= attackStrength
                rhs.armySize -= attackStrength
                print(lhs.name + " leads an assault on " + rhs.name + ", killing " + String(attackStrength) + " men.")
                if rhs.gatheredSize < 0 {
                    rhs.gatheredSize = 0
                }
            } else {
                let attackStrength = Int(Double(rhs.gatheredSize) * Double(rhs.strength) / 500.0 * Double(arc4random_uniform(2)))
                lhs.gatheredSize -= attackStrength
                lhs.armySize -= attackStrength
                print(rhs.name + " attacks " + lhs.name + ", causing " + String(attackStrength) + " deaths.")
                if lhs.gatheredSize < 0 {
                    lhs.gatheredSize = 0
                }
            }
            sleep(1)
        }
        return lhs.armySize > rhs.armySize ? lhs : rhs
    }
}
// ⚔

/*
 let jsonEncoder = JSONEncoder()
 if let jsonData = try? jsonEncoder.encode(Alex),
 let jsonString = String(data: jsonData, encoding: .utf8)
 */

var Grant = Supreme_Commander("Grant", 20000000, "TNSK+RN-0081", 100)
var Lee = Supreme_Commander("Lee", 100000, "AXON06", 50000)
print(Grant >> Lee)
