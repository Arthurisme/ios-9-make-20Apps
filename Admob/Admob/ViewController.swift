//
//  ViewController.swift
//  Admob
//
//  Created by Arthur on 2015-11-11.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

    @IBOutlet weak var GADAd: GADBannerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.GADAd.adUnitID = "ca-app-pub-1881041560693659/3136358929"
        self.GADAd.rootViewController = self
        let request: GADRequest = GADRequest()
        self.GADAd.loadRequest(request)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

