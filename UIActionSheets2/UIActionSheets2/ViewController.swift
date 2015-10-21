//
//  ViewController.swift
//  UIActionSheets2
//
//  Created by Arthur on 2015-10-19.
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

    @IBAction func UIActionSheetButton(sender: AnyObject) {
        
        let optionMenu = UIAlertController(title: "Title" , message: "Message", preferredStyle: .ActionSheet)
        
        let Action1=UIAlertAction(title: "Button 1", style: .Default, handler :{  ( alert: UIAlertAction!)-> Void in
        
        self.Label.text="Buttton 1 was pressed"
        })
        
        let Action2=UIAlertAction(title: "Button 2", style: .Default, handler :{  ( alert: UIAlertAction!)-> Void in
            
            self.Label.text="Buttton 2 was pressed"
        })
        
        let Cancel=UIAlertAction(title: "Cancle", style: .Cancel, handler :{  ( alert: UIAlertAction!)-> Void in
            
                     })
        
        optionMenu.addAction(Action1)
        optionMenu.addAction(Action2)
        optionMenu.addAction(Cancel)
        
        self.presentViewController(optionMenu, animated: true, completion: nil)
        
    }

}

