//
//  ViewController.swift
//  ChangingImages
//
//  Created by Arthur on 2015-10-30.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Imageciew: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Car1(sender: AnyObject) {
        Imageciew.image = UIImage(named: "Car1.png")
        
    }

    @IBAction func Car2(sender: AnyObject) {
         Imageciew.image = UIImage(named: "Car2.png")
    }
    
    @IBAction func Car3(sender: AnyObject) {
         Imageciew.image = UIImage(named: "Car3.png")
    }
    
    @IBAction func Car4(sender: AnyObject) {
         Imageciew.image = UIImage(named: "Car4.png")
    }
    @IBAction func Car5(sender: AnyObject) {
         Imageciew.image = UIImage(named: "Car5.png")
    }
    
    @IBAction func Car6(sender: AnyObject) {
         Imageciew.image = UIImage(named: "Car6.png")
    }
    
}

