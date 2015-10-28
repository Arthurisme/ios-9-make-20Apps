//
//  ViewController.swift
//  UIWebViews
//
//  Created by Arthur on 2015-10-27.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let url = NSURL(string:"http://www.irooms.ca")
//        let url = NSURL(string:"http://www.google.com")
        let request = NSURLRequest(URL:url!)
        Webview.loadRequest ( request )
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

