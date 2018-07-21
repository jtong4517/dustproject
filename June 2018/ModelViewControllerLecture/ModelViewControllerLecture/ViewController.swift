//
//  ViewController.swift
//  ModelViewControllerLecture
//
//  Created by dtong on 6/16/18.
//  Copyright © 2018 Maryland Dust Storm Project. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var test: UIButton!
    @IBAction func ButtonClicked (_sender: Any) {
        CountModel.numberOfClicks += 1
        labelOutlet.text = "\(CountModel.numberOfClicks)"
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

