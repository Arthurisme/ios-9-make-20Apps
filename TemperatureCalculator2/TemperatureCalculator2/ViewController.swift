//
//  ViewController.swift
//  TemperatureCalculator2
//
//  Created by Arthur on 2015-10-16.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CelsiusLabel: UILabel!
    @IBOutlet weak var Fehrenheit: UILabel!
    @IBOutlet weak var SliderOutlet: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SliderTemperatureCal(sender: AnyObject) {
        
        Fehrenheit.text = String(format: "%4.0f Fahrenheit",  SliderOutlet.value)
        let CelsiusValue=(SliderOutlet.value-32)/1.8
        CelsiusLabel.text = String(format: "%4.1f Celsius",CelsiusValue)
        
        
    }

}

