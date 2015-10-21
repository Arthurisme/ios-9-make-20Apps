//
//  ViewController.swift
//  ShakeMeGame
//
//  Created by Arthur on 2015-10-19.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = NSTimer()
    var countInt = 0
    var scoreInt = 0
    var modeInt = 0
    
    @IBOutlet weak var TimerLabel: UILabel!

    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet weak var StartButtonOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countInt = 10
        scoreInt = 0
        TimerLabel.text=String(countInt)
        ScoreLabel.text=String(scoreInt)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func StartButton(sender: AnyObject) {
        
        if (scoreInt==0){
            StartButtonOutlet.enabled=false
            countInt=10
            TimerLabel.text=String(countInt)
            TimerLabel.text=String(scoreInt)

            modeInt=1
            
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: ("StartCounter"), userInfo: nil, repeats: true)
            
        }
        
        if countInt==0{
            countInt=10
            scoreInt=0
        }
       
        
    }
    
    func StartCounter(){
        
        countInt-=1
        TimerLabel.text=String(countInt)
        
        if countInt==0{
            StartButtonOutlet.enabled=true

            timer.invalidate()
            
            modeInt=2
        }

        
    }
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if motion == .MotionShake{
            
            if modeInt==1{
            scoreInt+=1;
             ScoreLabel.text=String(scoreInt)
        }
        }
    }

}

