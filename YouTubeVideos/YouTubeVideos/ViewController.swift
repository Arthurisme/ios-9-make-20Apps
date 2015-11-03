//
//  ViewController.swift
//  YouTubeVideos
//
//  Created by Arthur on 2015-11-03.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var SearchBar: UISearchBar!
    
    @IBOutlet weak var webView1: UIWebView!
    
    @IBOutlet weak var WebView2: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let EmbedCode = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/iwgfEQk4p4U\" frameborder=\"0\" allowfullscreen></iframe>"
        
        webView1.loadHTMLString(EmbedCode, baseURL: nil)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func searchBarSearchButtonClicked(searchbar: UISearchBar){
        
        searchbar.resignFirstResponder()
        let EmbedCode2 = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/" + (searchbar.text!) + "\" frameborder=\"0\" allowfullscreen></iframe>"
        
        webView1.loadHTMLString(EmbedCode2, baseURL: nil)
        
    }


}

