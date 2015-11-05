//
//  TableViewController.swift
//  TableViewApplication
//
//  Created by Arthur on 2015-11-05.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let ImageList = ["dog1.png","dog2.png","dog3.png","dog4.png","dog5.png","dog6.png" ]
    let TitleList = ["This is dog1.png","This is dog2.png","This is dog3.png","This is dog4.png","This is dog5.png","This is dog6.png" ]
    let DescriptionList = ["big dog1.png","small dog2.png","black dog3.png","white dog4.png","lovely dog5.png","Germany dog6.png" ]


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
        return TitleList.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! TableViewCell
        
        cell.CellTitle.text = TitleList[indexPath.row]
        cell.CellDescription.text = DescriptionList[indexPath.row]
        
        let ImageName = UIImage(named: ImageList[indexPath.row])
        
        cell.CellImageView.image = ImageName
        

        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
        if (segue.identifier == "DetailViewSegue"){
            
            let VC = segue.destinationViewController as! DetailView
            
            if let indexpath = self.tableView.indexPathForSelectedRow{
                
                let Title = TitleList[indexpath.row] as String
                let Description = DescriptionList[indexpath.row] as String
                
                let Imageview = ImageList[indexpath.row] as String
                VC.SentData1 = Imageview
                VC.SentData2 = Title
                VC.SentData3 = Description
                
            }
        
        }
        
        
    }


}

































