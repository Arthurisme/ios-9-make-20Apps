//
//  ViewController.swift
//  ObjectStyling
//
//  Created by Arthur on 2015-11-01.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView1: UIImageView!
    @IBOutlet weak var ImageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ImageView1.layer.cornerRadius = 20
        ImageView1.clipsToBounds = true
        
        ImageView1.layer.borderWidth = 5.0
        ImageView1.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.75).CGColor
        
        ImageView2.layer.shadowColor = UIColor.blackColor().CGColor
        ImageView2.layer.shadowOffset = CGSizeMake(2, 2)
        ImageView2.layer.shadowRadius = 5
        ImageView2.layer.shadowOpacity = 0.5
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

