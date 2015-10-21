//
//  ViewController.swift
//  UISegmentControls
//
//  Created by Arthur on 2015-10-16.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SegmentOutlet: UISegmentedControl!
    @IBOutlet weak var Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SegmentControl(sender: AnyObject) {
        
        if(SegmentOutlet.selectedSegmentIndex==0){
            Label.text="Segment 1 was selected."
        }
        if(SegmentOutlet.selectedSegmentIndex==1){
            Label.text="Segment 2 was selected."
        }
        if(SegmentOutlet.selectedSegmentIndex==2){
            Label.text="Segment 3 was selected."
        }
        if(SegmentOutlet.selectedSegmentIndex==3){
            Label.text="Segment 4 was selected."
        }
    }

}

