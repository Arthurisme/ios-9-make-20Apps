//
//  ViewController.swift
//  SwitchingXIB
//
//  Created by Arthur on 2015-10-29.
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

    @IBAction func GoXIB(sender: AnyObject) {
        let newview = SecondViewController(nibName: "SecondViewController" ,bundle: nil)
        newview.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        self.presentViewController(newview, animated: true, completion: nil)
        
        
    }

}

