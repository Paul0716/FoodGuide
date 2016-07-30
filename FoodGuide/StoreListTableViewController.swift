//
//  StoreListTableViewController.swift
//  FoodGuide
//
//  Created by Paul Ku on 2016/7/29.
//  Copyright © 2016年 Paul Ku. All rights reserved.
//

import UIKit
import Alamofire

class StoreListTableViewController: UITableViewController {
    
    var storesJSON = [AnyObject]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.test()
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

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return self.storesJSON.count
    }
    
    func test(){
        Alamofire.request(.GET, "https://maps.googleapis.com/maps/api/place/nearbysearch/json",
                parameters: [
                    "key"       :   "AIzaSyAmG59jZCzeqXlRK9wbytscseo5A0oxQ_8",
                    "location"  :   "24.141154,120.663271",
                    "radius"    :   "1000"
            ])
            .responseJSON { response in
                if let JSON = response.result.value {
                    self.storesJSON = JSON["results"] as! [AnyObject]
                    self.tableView.reloadData()
                }
            }
        
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! StoreTableCell
        let data = self.storesJSON[indexPath.row]
        
        cell.storeName!.text = data["name"] as? String
        cell.StoreDetail!.text = data["vicinity"] as? String
        let photo = data["photos"] as! [AnyObject]
        cell.loadImage(photo)
        
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
