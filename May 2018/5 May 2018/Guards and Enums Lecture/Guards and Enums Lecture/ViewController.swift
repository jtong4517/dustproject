//
//  ViewController.swift
//  Guards and Enums Lecture
//
//  Created by dtong on 5/5/18.
//  Copyright © 2018 Maryland Dust Storm Testing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad () {
        super.viewDidLoad()
        var todaysTime = 7;
        let todayDay = "Sat";
        learnIOS(time: todaysTime, day: todayDay);
        learnIOSWithGuard(time: Int, day: String);
        // TODO1: Write a `learnIOS` function that takes in day, time, and health.
        
        // TODO2: Write a function `myGuard` which will check the day, time and \(health)
        
        enum daysOfWeek {
            case Monday;
            case Tuesday;
            case Wednesday;
        }
        //enums are used for type safety
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func testVarScropes () {
        var myAge = 35;
        for i in 1 ... 5 {
            //let myAge = i
            var myAge = i;
            print("My age in the loop \(myAge)");
        }
        print("My age out of the loop \(myAge)");
    }
    
    
    func learnIOSWithGuard (time: Int, day: String) {
        guard day == "Sat" else {
            print("The day is not saturday");
            return;
        }
        guard time == 7 else {
            print("The time is not 7");
            return;
        }
        guard health == true else {
            print("Your health is bad")
            return;
        }
        print("This is IOS time!")
    }
    
    func learnIOS (time: Int, day: String, healthy: Bool) {
        if day == "Sat" {
            if time == 7 {
                if healthy {
                    print("👌This is IOS time!")
                } else {
                    
                }
            } else {
                print("Today is saturday but it is not 7 PM");
            }
        } else {
            print("The day not sat");
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

