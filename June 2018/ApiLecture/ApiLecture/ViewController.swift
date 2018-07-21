//
//  ViewController.swift
//  ApiLecture
//
//  Created by dtong on 6/16/18.
//  Copyright © 2018 Maryland Dust Storm Project. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        apiWithoutParam()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func apiWithoutParam () {
        let url = URL(string: "https://www.apple.com")!
        let task = URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            if let data = data {
                print(data)
            }
        }
    }
    
}
