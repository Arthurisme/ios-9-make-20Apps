//
//  ViewController.swift
//  EmailText
//
//  Created by Arthur on 2015-11-09.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit
import MessageUI


class ViewController: UIViewController, MFMailComposeViewControllerDelegate {
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var ImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendEmail(sender: AnyObject) {
        
        let eMailTitle = "Title"
        let toRecipents  = ["abc@123.com"]
        let MessageBody = Label.text
        let eMailImage = ImageView.image
        let imageData = UIImageJPEGRepresentation(eMailImage!, 1.0)
        
        let mc: MFMailComposeViewController = MFMailComposeViewController()
        
        mc.mailComposeDelegate = self
        mc.setToRecipients(toRecipents)
        mc.setSubject(eMailTitle)
        mc.setMessageBody(MessageBody!, isHTML: false)
        mc.addAttachmentData(imageData!, mimeType: "image/jpeg", fileName: "image.jpeg")
        self.presentViewController(mc, animated: true, completion: nil)
        
    }
    
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        switch result.rawValue
        {
        case MFMailComposeResultCancelled.rawValue:
             print("Cancelled")
        case MFMailComposeResultFailed.rawValue:
            print("f")
        case MFMailComposeResultSent.rawValue:
            print("Success")
          
            default: break
            
            
            
            
        }
    }
        
    }
    
    
    
    
    



