//
//  MyPlayground
//

//
//  ViewController.swift
//  CollectionLecture
//

import UIKit

struct Temperature {
    var celsius: Double;
    
    var fahrenheit: Double {
        return celsius * 1.8 + 32;
    }
    
    var kelvin: Double {
        return celsius + 273.15;
    }
}

let currentTemperature = Temperature(celsius: 0.0);
print(currentTemperature.fahrenheit)
