//
//  ViewController.swift
//  BackgroundColours
//
//  Created by Arthur on 2015-11-01.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func redColor(sender: AnyObject) {
        self.view.backgroundColor = UIColor.redColor()
    }

    @IBAction func blueColor(sender: AnyObject) {
        self.view.backgroundColor = UIColor.blueColor()
    }
}

