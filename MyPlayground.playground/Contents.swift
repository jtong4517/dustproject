//
//  MyPlayground
//

//
//  ViewController.swift
//  CollectionLecture
//

import Foundation

func magicEightBall () -> String {
    let randomNum = Int(arc4random_uniform(UInt32(5)));
    
    switch randomNum {
    case 0:
        return "definitely not";
        
    case 1:
        return "most likely not";
        
    case 2:
        return "possibly";
        
    case 3:
        return "probably";
        
    case 4:
        return "certainly";
        
    default:
        return "this should not be happening";
    }
};
//: page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
print(magicEightBall());
