//
//  AddViewController.swift
//  CarSpotter
//
//  Created by Arthur on 2015-11-05.
//  Copyright © 2015 Arthur. All rights reserved.
// check out from git via the morning copy

import UIKit
import CoreData

class AddViewController: UIViewController {
 
    @IBOutlet weak var SqlitePathTestView: UITextView!
      @IBOutlet weak var pathlabel: UILabel!
    @IBOutlet weak var CarMakeTextField: UITextField!

    @IBOutlet weak var CarModelTextField: UITextField!
    
    @IBOutlet weak var CarYearTextField: UITextField!
    
    var CarMakeStringFromSegue: String = ""
    var CarModelStringFromSegue: String = ""

    var CarYearStringFromSegue: String = ""
    
    var existingItem: NSManagedObject!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //show the path of the sqlite:
        let paths = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
         pathlabel.text = String(paths)
        SqlitePathTestView.text = String(paths)
        
        //save or update:
        if (existingItem != nil) {
            
            CarMakeTextField.text = CarMakeStringFromSegue
            CarModelTextField.text = CarModelStringFromSegue
            CarYearTextField.text = CarYearStringFromSegue
            
        }
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func saveToDatabase(sender: AnyObject) {
        
        let AppDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let theContext: NSManagedObjectContext = AppDel.managedObjectContext
        let theEnt = NSEntityDescription.entityForName("CarList", inManagedObjectContext: theContext)
        
        if (existingItem != nil) {
            
            existingItem.setValue(CarMakeTextField.text as String?, forKey: "carmake")
            existingItem.setValue(CarModelTextField.text as String?, forKey: "carmodel")
            existingItem.setValue(CarYearTextField.text as String?, forKey: "caryear")
         
            
         
            
        }
        
        else{
            let newItem = Model(entity: theEnt!, insertIntoManagedObjectContext: theContext)
            
            newItem.carmake = CarMakeTextField.text!
            newItem.carmodel = CarModelTextField.text!
            newItem.caryear = CarYearTextField.text!
            
        }
        
        
    
        
        do{
            try theContext.save()
        }
        
        catch _ {
            
        }
        
        self.navigationController?.popToRootViewControllerAnimated(true)
        
        
    }

}
