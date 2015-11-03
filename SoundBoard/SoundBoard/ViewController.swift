//
//  ViewController.swift
//  SoundBoard
//
//  Created by Arthur on 2015-11-03.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    var SoundPlayer1:AVAudioPlayer = AVAudioPlayer()
    var SoundPlayer2:AVAudioPlayer = AVAudioPlayer()
    var SoundPlayer3:AVAudioPlayer = AVAudioPlayer()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let FieldLocation1 = NSBundle.mainBundle().pathForResource("drum1", ofType: ".mp3")

        let FieldLocation2 = NSBundle.mainBundle().pathForResource("drum2", ofType: ".mp3")

        let FieldLocation3 = NSBundle.mainBundle().pathForResource("drum3", ofType: ".mp3")
        
        
        do {
            
              SoundPlayer1 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: FieldLocation1!))
               SoundPlayer2 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: FieldLocation2!))
               SoundPlayer3 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: FieldLocation3!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
            
        }
        catch
        {
            print(error)
        }
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 
    @IBAction func drum1(sender: AnyObject) {
        
        SoundPlayer1.play()
    }

    @IBAction func durm2(sender: AnyObject) {
        SoundPlayer2.play()
    }
    @IBAction func drum3(sender: AnyObject) {
        SoundPlayer3.play()
    }
}

