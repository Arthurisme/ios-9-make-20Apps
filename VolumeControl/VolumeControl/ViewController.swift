//
//  ViewController.swift
//  VolumeControl
//
//  Created by Arthur on 2015-11-03.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    @IBOutlet weak var Slider: UISlider!
    
    var SoundPlayer:AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let FileLocation = NSBundle.mainBundle().pathForResource("Music2", ofType: ".mp3")
        
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

    @IBAction func start(sender: AnyObject) {
        
        SoundPlayer.play()
    }
 
    @IBAction func stop(sender: AnyObject) {
        SoundPlayer.stop()
    }
  
    @IBAction func VolumeControl(sender: AnyObject) {
        
        SoundPlayer.volume = Slider.value
    }
}

