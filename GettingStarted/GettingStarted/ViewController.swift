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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

