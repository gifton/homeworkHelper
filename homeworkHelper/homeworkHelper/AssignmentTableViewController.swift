//
//  AssignmentTableViewController.swift
//  homeworkHelper
//
//  Created by Gifton Okoronkwo on 9/20/17.
//  Copyright © 2017 Gifton Okoronkwo. All rights reserved.
//

import UIKit

class AssignmentTableViewController: UITableViewController {
    
    var events:[assignment] = [
        assignment(className: "Calculus", workType: "Problems", dueDate: "09-29-17", estTime: "3", isComplete: false, urgency: "505", dateAssigned: "09-27-19", about: "Bro I dont even know how to spell lorum ipson? Bro I dont even know how to spell lorum ipson?"),
        assignment(className: "Physics", workType: "Test", dueDate: "09-30-17", estTime: "3", isComplete: false, urgency: "505", dateAssigned: "09-27-19", about: "Bro I dont even know how to spell lorum ipson?"),
        assignment(className: "Calculus", workType: "Test", dueDate: "10-09-17", estTime: "3", isComplete: false, urgency: "505", dateAssigned: "09-27-19", about: "Bro I dont even know how to spell lorum ipson?"),
        assignment(className: "Physics", workType: "Reading", dueDate: "09-29-17", estTime: "3", isComplete: false, urgency: "505", dateAssigned: "09-27-19", about: "Bro I dont even know how to spell lorum ipson?"),
        assignment(className: "Calculus", workType: "Quiz", dueDate: "10-14-17", estTime: "3", isComplete: false, urgency: "505", dateAssigned: "09-27-19", about: "Bro I dont even know how to spell lorum ipson?"),
        assignment(className: "Calculus", workType: "Reading", dueDate: "10-12-17", estTime: "3", isComplete: false, urgency: "505", dateAssigned: "09-27-19", about: "Bro I dont even know how to spell lorum ipson?"),
        assignment(className: "Physics", workType: "Reading", dueDate: "09-15-17", estTime: "3", isComplete: false, urgency: "505", dateAssigned: "09-27-19", about: "Bro I dont even know how to spell lorum ipson?"),
        assignment(className: "Physics", workType: "Test", dueDate: "10-10-17", estTime: "3", isComplete: false, urgency: "505", dateAssigned: "09-27-19", about: "Bro I dont even know how to spell lorum ipson?")
    ]
    
    var eventClasses = ["Physics", "Calculus"]
    
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

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return events.count
        
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10; // space b/w cells
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView()
        return header
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.section)
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! AssignmentTableViewCell
        
        cell.classNameLabel.text = events[indexPath.row].className
        cell.workTypeLabel.text = events[indexPath.row].workType
        cell.dueDateLabel.text = "Due: " + events[indexPath.row].dueDate
        cell.estTimeLabel.text = "complete in: \(events[indexPath.row].estTime)" + "hrs"
        cell.urgencyLabel.text = events[indexPath.row].urgency
        cell.aboutLabel.text = events[indexPath.row].about
        cell.dateAssignedLabel.text = "assigned: " + events[indexPath.row].dateAssigned
        
        cell.accessoryType = events[indexPath.row].isComplete ? .checkmark : .none
        
        //styling
        //depending on class type: change background
        if events[indexPath.row].className == eventClasses[0]{
            cell.backgroundView = UIImageView(image: UIImage(named: "cellBGOne.png"))
        } else if events[indexPath.row].className == eventClasses[1]{
            cell.backgroundView = UIImageView(image: UIImage(named: "cellBGTwo.png"))
        }else {
            cell.backgroundView = UIImageView(image: UIImage(named: "cellBGThree.png"))
        }
        
        
        //dateAssign styling
        
        
        //cell styling
        //        cell.layer.borderWidth = 1
        //        cell.layer.borderColor = UIColor.lightGray.cgColor
        
        return cell
        
    }
    
    //editing cell
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            // Delete the row from the data source
            events.remove(at: indexPath.row)
        }
        
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        // Delete button
        let deleteAction = UITableViewRowAction(style: UITableViewRowActionStyle.default, title: "Delete",handler: { (action, indexPath) -> Void in
            
            // Delete the row from the data source
            self.events.remove(at: indexPath.row)
            
            self.tableView.deleteRows(at: [indexPath], with: .fade)
        })
        
        //complete button
        
        let completeAction = UITableViewRowAction(style: UITableViewRowActionStyle.default, title: "Complete",handler: { (action, indexPath) -> Void in
            
            // update assignment complete bool var for the row from the data source
            self.events[indexPath.row].isComplete = true 
        })
        
        deleteAction.backgroundColor = UIColor(red: 202.0/255.0, green: 202.0/255.0, blue: 203.0/255.0, alpha: 1.0)
        completeAction.backgroundColor = UIColor(red:0.27, green:0.44, blue:0.51, alpha:1.0)
        
        return [deleteAction, completeAction]
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
