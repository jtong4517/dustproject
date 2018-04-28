//
//  MyPlayground
//

//
//  ViewController.swift
//  CollectionLecture
//

import UIKit

class Animal {
    var hasFur: Bool;
    var tail: Bool;
    var feet: Int {
        return 5;
    };
    init (hasFurProperty: Bool, numberOfFeet: Int) {
        hasFur = hasFurProperty;
    }
    func makeSound () {
        
    }
}

// TODO: Override parent variables
// TODO 2: Display an image in the image view.
// TODO 3: Override a parent initialization

class Cat: Animal {
    override var feet: Int {
        get { return 4; }
    }
    override init (hasFurProperty: Bool, numberOfFeet: Int) {
        
    }
}
