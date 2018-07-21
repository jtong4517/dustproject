//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Note: Codable {
    var title: String
    var text: String
    var timestamp: Date
}

let newNote = Note(title: "Grocery run", text: "Pick up mayonnaise, mustard, lettuce, tomato, and pickles.", timestamp: Date())

/*
let propertyListEncoder = PropertyListEncoder()
if let encodedNote = try? propertyListEncoder.encode(newNote) {
    print(encodedNote)
    
    let propertyListDecoder = PropertyListDecoder()
    if let decodedNote = try?
        propertyListDecoder.decode(Note.self, from: encodedNote) {
        print(decodedNote)
    }
}
*/

let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
let archiveURL = documentsDirectory.appendingPathComponent("notes_test").appendingPathExtension("plist")

let propertyListEncoder = PropertyListEncoder()
let encodedNote = try? propertyListEncoder.encode(newNote)=
