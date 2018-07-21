//
//  ViewController.swift
//  Light
//
//  Created by dtong on 7/20/18.
//  Copyright © 2018 Maryland Dust Storm Project. All rights reserved.
//

import UIKit

var lightOn = true

class ViewController: UIViewController {

    @IBOutlet weak var lightButton: UIButton!
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
    
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

