//
//  ViewController.swift
//  FaceBookText
//
//  Created by Arthur on 2015-11-09.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {
    @IBOutlet weak var Button: UIButton!
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


    @IBAction func postToFacebookButton(sender: AnyObject) {
        
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook){
            
            let FacebookSheet:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            FacebookSheet.setInitialText(Label.text)
            FacebookSheet.addImage(ImageView.image)
            
            self.presentViewController(FacebookSheet,animated:true, completion:nil)
            
        } else{
            
            let alert = UIAlertController(title: "Accounts", message: "Please log into your facebook in your setting.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:  nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
        
        
    }
}

