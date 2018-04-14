//
//  ViewController.swift
//  GettingStarted
//
//  Created by Jeffrey Tong on 4/7/18.
//

import UIKit

var lightOn = true, clicks = 0;

class ViewController: UIViewController {
    @IBOutlet weak var lightSwitch: UISwitch!
    @IBOutlet weak var button: UIButton!
    
    @IBAction func lightSwitch(_ sender: Any) {
        view.backgroundColor = lightOn ? UIColor.black : UIColor.white;
        lightOn = !lightOn;
    }
    
    @IBAction func button(_ sender: Any) {
        clicks += 1;
        button.setTitle(String(clicks), for: .normal);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var friends = ["Alice", "Bob", "Carla", "David", "Elizabeth", "Frederick", "Gabriela", "Hugo", "Isabella", "Jason", "Kelly", "Lawrence", "Molly", "Nathan", "Olivia", "Pedro", "Quien es esto", "Richard", "Sarah"]
        print(friends.contains("Alice"));
        print(friends.contains("Alex"));
        friends += ["托马斯"];
        
        var peopleAges = [
            "Alice": 3,
            "Jeff": 3,
            "Kelvin": 0
        ];
        for item in 1 ... 5 {
            print(item)
        }
        
        for _ in 1 ... 5 {
            print("iteration")
        }
        
        class Animal {
            var hasFur: Bool;
            var foots: Int;
            
            init (hasFurProperty: Bool, numFoots: Int) {
                hasFur = hasFurProperty;
                foots = numFoots;
            }
            
            func makeSound () {
                print("Down with Communism!")
                
            }
        }
        
        class Cat: Animal {
            override func makeSound() {
                print("Down with Neo-Capitalism!")
            }
        }
        
        let animation = Animal(hasFurProperty: true, numFoots: 4);
        animation.makeSound()
        
                // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
