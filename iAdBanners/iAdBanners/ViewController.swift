//
//  ViewController.swift
//  iAdBanners
//
//  Created by Arthur on 2015-11-11.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit
import iAd
import AdSupport

class ViewController: UIViewController,ADBannerViewDelegate {
    
    @IBOutlet weak var AdBannerView: ADBannerView!
//    var isAdShow = true
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.canDisplayBannerAds = true
        self.AdBannerView?.delegate = self
        self.AdBannerView?.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func bannerViewDidLoadAd(banner: ADBannerView!) {
        
        self.AdBannerView?.hidden = false
        
    }
    
    func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
        self.AdBannerView?.hidden = true
    }


}

