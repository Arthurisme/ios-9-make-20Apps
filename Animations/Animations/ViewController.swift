//
//  ViewController.swift
//  Animations
//
//  Created by Arthur on 2015-11-01.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    
    var timer = NSTimer()
    var Counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 
    @IBAction func PlayAnimation(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.05, target: self, selector: Selector("PerformAnimatin"), userInfo: nil, repeats: true)
        
        
    }
    
    func PerformAnimatin(){
        
        Counter++
        
        if Counter == 16{
            Counter = 1
        }
        
        ImageView.image = UIImage(named: "win_\(Counter).png")
        
    }
}

