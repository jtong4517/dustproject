//
//  MyPlayground
//

//
//  ViewController.swift
//  CollectionLecture
//

import UIKit

class Animal {
    var hasFur: Bool
    var feet: Int = 5;
    init (hasFurProperty: Bool, numberOfFeet: Int) {
        hasFur = hasFurProperty;
        feet = numberOfFeet;
    }
    func makeSound () {
        
    }
}

// TODO: Override parent variables
// TODO 2: Display an image in the image view.

class Cat: Animal {
    override var feet = 4;
    override func makeSound() {
        print("meow");
    }
}
