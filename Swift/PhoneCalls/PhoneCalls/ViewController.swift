//
//  ViewController.swift
//  PhoneCalls
//
//  Created by Arthur on 2015-11-09.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func CallButton(sender: AnyObject) {
        
        UIApplication.sharedApplication().openURL(NSURL(string: "tel://1234567")!)
        
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

