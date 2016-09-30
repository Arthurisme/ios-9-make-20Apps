//
//  ViewController.swift
//  DelayedAction
//
//  Created by Arthur on 2015-10-20.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func DelayedActionButton(sender: AnyObject) {
        
        NSTimer.scheduledTimerWithTimeInterval(5, target: self, selector: Selector("DelayedAction"), userInfo: nil, repeats: false)
        
        
    }
    
    func DelayedAction(){
        
        Label.text="I am Coming."
    }


    
}

