//
//  ViewController.swift
//  SnapGame
//
//  Created by Arthur on 2015-10-31.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var timerInt = 0
    
    var ImageTimer = NSTimer()
    var scoreInt = 0

    @IBOutlet weak var StartGameOutlet: UIButton!
    @IBOutlet weak var TimeButtonOutlet: UIButton!
    @IBOutlet weak var ScoreOutlet: UIButton!
    @IBOutlet weak var ImageView1: UIImageView!
    @IBOutlet weak var ImageView2: UIImageView!
    @IBOutlet weak var SnapButtonOutlet: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timerInt = 20
        scoreInt = 0
        TimeButtonOutlet.setTitle(String(timerInt), forState:.Normal)
        ScoreOutlet.setTitle(String(scoreInt), forState:.Normal)
        
        SnapButtonOutlet.enabled = false
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func StartGame(sender: AnyObject) {
        
        if timerInt == 20{
             SnapButtonOutlet.enabled = true
            
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("TimerUpdate"), userInfo: nil, repeats: true)
        }
        
        if timerInt == 0{
            
            
            
            scoreInt = 0
            timerInt = 20
            
            SnapButtonOutlet.enabled = true

            TimeButtonOutlet.setTitle(String(timerInt), forState:.Normal)
            ScoreOutlet.setTitle(String(scoreInt), forState:.Normal)
            
            
        }
        
        
        
    }
    
    func TimerUpdate(){
        
        
        timerInt -= 1
          TimeButtonOutlet.setTitle(String(timerInt), forState:.Normal)
        
        let random1 = arc4random_uniform(6)
        switch(random1){
            
        case 0:
            ImageView1.image = UIImage(named: "Car1.png")
            break
        case 1:
            ImageView1.image = UIImage(named: "Car2.png")
            break
        case 2:
            ImageView1.image = UIImage(named: "Car3.png")
            break
        case 3:
            ImageView1.image = UIImage(named: "Car4.png")
            break
        case 4:
            ImageView1.image = UIImage(named: "Car5.png")
            break
        case 5:
            ImageView1.image = UIImage(named: "Car6.png")
            break
        default:
            break
            
        }
        let random2 = arc4random_uniform(6)
        switch(random2){
            
        case 0:
            ImageView2.image = UIImage(named: "Car1.png")
            break
        case 1:
            ImageView2.image = UIImage(named: "Car2.png")
            break
        case 2:
            ImageView2.image = UIImage(named: "Car3.png")
            break
        case 3:
            ImageView2.image = UIImage(named: "Car4.png")
            break
        case 4:
            ImageView2.image = UIImage(named: "Car5.png")
            break
        case 5:
            ImageView2.image = UIImage(named: "Car6.png")
            break
        default:
            break
            
        }
        
        if timerInt == 0
        {
            timer.invalidate()
            SnapButtonOutlet.enabled = false
        }
        
        
        
    }

    @IBAction func Snap(sender: AnyObject) {
        if ImageView1.image == ImageView2.image {
            scoreInt += 1
            TimeButtonOutlet.setTitle(String(timerInt), forState:.Normal)
            ScoreOutlet.setTitle(String(scoreInt), forState:.Normal)
            
        }
        else{
            scoreInt -= 1
            TimeButtonOutlet.setTitle(String(timerInt), forState:.Normal)
            ScoreOutlet.setTitle(String(scoreInt), forState:.Normal)
        }
    }
}

