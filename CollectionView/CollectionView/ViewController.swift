//
//  ViewController.swift
//  CollectionView
//
//  Created by Arthur on 2015-11-02.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var array : [String] = []
    
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
        // Do any additional setup after loading the view, typically from a nib.
        
        array = ["Car1.png","Car2.png","Car3.png","Car4.png","Car5.png","Car6.png","Car2.png","Car3.png","Car4.png","Car5.png","Car6.png","Car2.png","Car3.png","Car4.png","Car5.png","Car6.png","Car2.png","Car3.png","Car4.png","Car5.png","Car6.png","Car2.png","Car3.png","Car4.png","Car5.png","Car6.png","Car2.png","Car3.png","Car4.png","Car5.png","Car6.png","Car2.png","Car3.png","Car4.png","Car5.png","Car6.png","Car2.png","Car3.png","Car4.png","Car5.png","Car6.png","Car2.png","Car3.png","Car4.png","Car5.png","Car6.png","Car2.png","Car3.png","Car4.png","Car5.png","Car6.png" ]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CollectionViewCell
        cell.ImageView.image = UIImage(named: array[indexPath.row])
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        name = array [indexPath.row]
    }


}

