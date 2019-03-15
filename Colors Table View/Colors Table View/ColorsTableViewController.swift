//
//  TableViewController.swift
//  Colors Table View
//
//  Created by Kolbe Weathington on 3/15/19.
//  Copyright © 2019 Kolbe Weathington. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {

    class Color{
        var name : String
        var color : UIColor
        
        init(_ colorName: String, _ backgroundColor : UIColor ){
            self.name = colorName
            self.color = backgroundColor
        }
    }
    
    let colorArray : Array<Color> = [
        Color("red", UIColor.red)
        ,Color("orange",UIColor.orange)
        ,Color("yellow",UIColor.yellow)
        ,Color("green",UIColor.green)
        ,Color("blue",UIColor.blue)
        ,Color("purple",UIColor.purple)
        ,Color("brown",UIColor.brown)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return colorArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentColor = colorArray[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell" , for: indexPath)

        cell.textLabel?.text = currentColor.name
        cell.backgroundColor = currentColor.color

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
