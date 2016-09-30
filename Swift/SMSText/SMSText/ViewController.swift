//
//  ViewController.swift
//  SMSText
//
//  Created by Arthur on 2015-11-09.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMessageComposeViewControllerDelegate{
    @IBOutlet weak var Label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 

    @IBAction func sentMessage(sender: AnyObject) {
        
            let messageVC = MFMessageComposeViewController()
        messageVC.recipients = ["123456789"]
        messageVC.body = Label.text
        messageVC.messageComposeDelegate = self
        
        
        
        
    }
    
    
    func messageComposeViewController(controller: MFMessageComposeViewController, didFinishWithResult result: MessageComposeResult) {
        switch (result.rawValue){
        case MessageComposeResultCancelled.rawValue: print("Message was cancelled")
        self.dismissViewControllerAnimated(true, completion: nil)
        case MessageComposeResultFailed.rawValue: print("Message was failed")
        self.dismissViewControllerAnimated(true, completion: nil)
        case MessageComposeResultSent.rawValue: print("Message was sent")
        self.dismissViewControllerAnimated(true, completion: nil)
         
        default: break
    
}

}
}