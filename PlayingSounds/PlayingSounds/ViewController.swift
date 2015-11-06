//
//  ViewController.swift
//  PlayingSounds
//
//  Created by Arthur on 2015-11-02.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var SoundPlayer   : AVAudioPlayer = AVAudioPlayer()
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let FileLocation = NSBundle.mainBundle().pathForResource("Music1", ofType: ".mp3")
        
        
        do{
            SoundPlayer = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: FileLocation!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
            
        }
        catch{
            print(error)
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Play(sender: AnyObject) {
        
        SoundPlayer.play()
    }

    @IBAction func Stop(sender: AnyObject) {
        SoundPlayer.stop()
        
    }
}

