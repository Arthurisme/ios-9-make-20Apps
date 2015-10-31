//
//  ViewController.swift
//  DisplayingImages
//
//  Created by Arthur on 2015-10-29.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   

    @IBAction func showImage(sender: AnyObject) {
        ImageView.image = UIImage(named: "rose2.png")
    }
}

