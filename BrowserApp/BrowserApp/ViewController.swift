//
//  ViewController.swift
//  BrowserApp
//
//  Created by Arthur on 2015-10-27.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var SearchBar: UISearchBar!

    @IBOutlet weak var Webview: UIWebView!
    @IBOutlet weak var ActInd: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        SearchBar.text = "http://"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func searchBarSearchButtonClicked(searchbar: UISearchBar){
        
        searchbar.resignFirstResponder()
        let text = SearchBar.text
        let url = NSURL(string: text!)
        let request = NSURLRequest(URL:url!)
        
        Webview.loadRequest(request)
        
    }
    
    
    func webViewDidStartLoad(webview: UIWebView) {
        ActInd.startAnimating()
    }
    
    
    
    func webViewDidStopLoad(webview : UIWebView) {
        ActInd.stopAnimating()
    }
    

}

