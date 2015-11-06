//
//  FirstViewController.swift
//  TabBarApp
//
//  Created by Arthur on 2015-11-04.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goTab2(sender: AnyObject) {
        tabBarController?.selectedIndex = 1
        
    }
    @IBAction func goTab3(sender: AnyObject) {
         tabBarController?.selectedIndex = 2
    }

}

