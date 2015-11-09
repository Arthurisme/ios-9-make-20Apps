//
//  TableViewController.swift
//  CarSpotter
//
//  Created by Arthur on 2015-11-05.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit
import CoreData

class TableViewController: UITableViewController {

    var List: Array<AnyObject> = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
 
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return List.count
    }
    
    override func viewDidAppear(animated: Bool) {
        
        let AppDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let Context: NSManagedObjectContext = AppDel.managedObjectContext
        let request = NSFetchRequest(entityName: "CarList")
        
        List = try! Context.executeFetchRequest(request)
        tableView.reloadData()
        
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell" ) as! TableViewCell
        
        let data: NSManagedObject = List[indexPath.row] as! NSManagedObject
        
        cell.CarMakeLabel?.text = data.valueForKey("carmake") as? String
        cell.CarModelLabel?.text = data.valueForKey("carmodel") as? String
        cell.CarYearLabel?.text = data.valueForKey("caryear") as? String
        

        // Configure the cell...

        return cell
    }
   

    
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

   
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
   
        let AppDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let  Context: NSManagedObjectContext =  AppDel.managedObjectContext
   
        
        
        if editingStyle ==  .Delete {
            
            //delete from the database:
            Context.deleteObject(List[indexPath.row] as! NSManagedObject)
            
            //delete from the list:
            List.removeAtIndex(indexPath.row)
            
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
        var error : NSError? = nil
        do{
            try Context.save()
            
            
        }
        catch let error1 as NSError{
            error = error1
            print(error)
            abort()
        }
    }
  

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "upDateSegue"{
            
            let selectedItem: NSManagedObject = List[self.tableView.indexPathForSelectedRow!.row] as! NSManagedObject
            
            let ViewCon : AddViewController = segue.destinationViewController as! AddViewController
            
            ViewCon.CarMakeStringFromSegue = selectedItem.valueForKey("carmake") as! String
            ViewCon.CarModelStringFromSegue = selectedItem.valueForKey("carmodel") as! String
            ViewCon.CarYearStringFromSegue = selectedItem.valueForKey("caryear") as! String
            
            ViewCon.existingItem = selectedItem
            

            
            
            
    }
    

}
}