//
//  ViewControllerImageDeatailViewController.swift
//  CollectionView
//
//  Created by Arthur on 2015-11-02.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class ViewControllerImageDeatailViewController: UIViewController {

    @IBOutlet weak var ImageDetailView: UIImageView!
    
    
    var name : AnyObject? {
        
        get{
            return NSUserDefaults.standardUserDefaults().objectForKey("name")
        }
        
        set {
            NSUserDefaults.standardUserDefaults().setObject(newValue!, forKey: "name")
            NSUserDefaults.standardUserDefaults().synchronize()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ImageDetailView.image = UIImage(named: name as! String)

        // Do any additional setup after loading the view.
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

}
