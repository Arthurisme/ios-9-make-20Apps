//
//  ViewController.swift
//  VibratingDevice
//
//  Created by Arthur on 2015-11-03.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit
import AudioToolbox


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 
    @IBAction func Vibrate(sender: AnyObject) {
        
        AudioServicesPlayAlertSound(kSystemSoundID_Vibrate)
        
    }
 
}

