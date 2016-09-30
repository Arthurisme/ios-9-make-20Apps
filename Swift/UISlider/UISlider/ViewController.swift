//
//  ViewController.swift
//  UISlider
//
//  Created by Arthur on 2015-10-16.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var SliderButton: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SliderToChangeFont(sender: AnyObject) {
        
        Label.font = UIFont(name: "Verdana", size: CGFloat(SliderButton.value))
        
    }

}

