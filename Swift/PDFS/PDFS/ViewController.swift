//
//  ViewController.swift
//  PDFS
//
//  Created by Arthur on 2015-11-01.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var WebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let PDFDoc = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("pdf-test", ofType: "pdf")!)
        let request = NSURLRequest(URL: PDFDoc)
        
        WebView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

