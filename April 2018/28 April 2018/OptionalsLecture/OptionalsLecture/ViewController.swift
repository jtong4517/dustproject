//
//  ViewController.swift
//  OptionalsLecture
//
//  Created by dtong on 4/28/18.
//  Copyright © 2018 Dust Project Testing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // optional
        var healthy: Bool?
        // optional with default value
        var word: String? = "someword";
        var word2: Int? = nil;
        
        if word2 != nil {
            print(word2)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /* April 28
     
    func doSomething () {
        print("This is a test");
        let name = "John";
        let age = 5;
        sayHello(Name: name, Age: age);
    }
    
    func sayHello (Name: String, Age: Int?) {
        if Age != nil {
            // explicit unwrapping
            print(Age!);
        }
        print("Age \(Age)");
        
        struct Toddler {
            var name: String;
            var ageInMonths: Int;
            
            init? (name: String, ageInMonths: Int) {
                if (ageInMonths < 12 || ageInMonths > 36) {
                    return nil;
                } else {
                    self.Name = name;
                    self.ageInMonths = ageInMonths;
                }
            }
        }
        
        var toddler = Toddler(name: "Jane", ageInMonths: 13);
        
        if let ageExists = Age {
            print("Unwrapped with if let \(ageExists)");
        }
        
        print("Hello \(Name)");
    } */
}
