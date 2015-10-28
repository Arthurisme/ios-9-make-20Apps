//
//  ViewController.swift
//  UIScrollViews
//
//  Created by Arthur on 2015-10-26.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Scroller: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Scroller.contentInset = UIEdgeInsetsMake(0, 0, 200, 0)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

