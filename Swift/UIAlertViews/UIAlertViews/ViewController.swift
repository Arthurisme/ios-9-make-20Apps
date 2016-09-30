//
//  ViewController.swift
//  UIAlertViews
//
//  Created by Arthur on 2015-10-27.
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

    @IBAction func AlertButtonClick(sender: AnyObject) {
        
        let Alert = UIAlertController(title: "Title", message: "Message", preferredStyle: .Alert)
        
        let DismissButton = UIAlertAction(title: "Dissmiss", style: .Cancel, handler:  { (alert: UIAlertAction!) -> Void in
        })
      Alert.addAction(DismissButton)
        self.presentViewController(Alert, animated: true, completion: nil)
    }

    
}

