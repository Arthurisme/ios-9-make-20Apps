//
//  ViewController.swift
//  UISwitches
//
//  Created by Arthur on 2015-10-15.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var SwitchOutlet: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(SwitchOutlet.on){
            Label.text="Switch is on."
        }
        else{
            Label.text="Switch is off."
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SwitchMe(sender: AnyObject) {
        
        if(SwitchOutlet.on){
            Label.text="Switch is on."
            }
        else{
            Label.text="Switch is off."
        }
        
        
    }

}

