//
//  ViewController.swift
//  URLLinks
//
//  Created by Arthur on 2015-10-20.
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

    @IBAction func ButtonStartURL(sender: AnyObject) {
        
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.irooms.ca/home/")!)
        
    }

}

