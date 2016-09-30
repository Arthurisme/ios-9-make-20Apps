//
//  ViewController.swift
//  ImageFromUrls
//
//  Created by Arthur on 2015-10-31.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "http://www.irooms.ca/home/images/imgforsite/Ship-sailing-on-a-cloud-wallpaper_3833.jpg")
        
        let data = NSData(contentsOfURL: url!)
        
        ImageView.image = UIImage(data: data!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

