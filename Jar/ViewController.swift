//
//  ViewController.swift
//  Jar
//
//  Created by Evan Lin on 10/31/16.
//  Copyright (c) 2016 Evan Lin. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var allTasks = [GeneralTask]()
    
//    required init(coder decoder: NSCoder) {
//        allTasks = [GeneralTask]()
//        allTasks.append(GeneralTask(assignedTo: "Michael", deadline: NSDate(dateString:"2014-06-06"), duration: 10))
//        
//        
//        super.init(coder: decoder)
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.allTasks.append(GeneralTask(taskName: "Take Out Trash",assignedTo: "Michael", deadline: NSDate(dateString:"2014-06-06"), duration: 10))
        
        self.allTasks.append(GeneralTask(taskName: "Wash Dishes",assignedTo: "Evan", deadline: NSDate(dateString:"2014-06-06"), duration: 10))
        
        self.allTasks.append(GeneralTask(taskName: "Clean Room",assignedTo: "David", deadline: NSDate(dateString:"2014-06-06"), duration: 10))
        
        self.allTasks.append(GeneralTask(taskName: "Kill Michael",assignedTo: "Tessera", deadline: NSDate(dateString:"2014-06-06"), duration: 10))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var segmentedControl: UISegmentedControl!

    
    func displayAllTasks() {
        let alertController = UIAlertController(title: "Changed", message: "Displaying all tasks.", preferredStyle: .Alert)
        
        let defaultAction = UIAlertAction(title: "Close Alert", style: .Default, handler: nil)
        
        //you can add custom actions as well
        alertController.addAction(defaultAction)
        
        presentViewController(alertController, animated: true, completion: nil)
        
    }
    
    
    
    
    func displayMyTasks() {
        let alertController = UIAlertController(title: "Changed", message: "Displaying my tasks.", preferredStyle: .Alert)
        
        let defaultAction = UIAlertAction(title: "Close Alert", style: .Default, handler: nil)
        
        //you can add custom actions as well
        alertController.addAction(defaultAction)
        
        presentViewController(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func indexChanged(sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex {
            case 0:
                displayAllTasks()
            case 1:
                displayMyTasks()
            default:
                break
        }
        
    }
    
    @IBOutlet weak var allTasksTable: UITableView!
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section:
        Int) -> Int
    {
        return self.allTasks.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        // Allocates a Table View Cell
        let aCell =
            tableView.dequeueReusableCellWithIdentifier("cell",
            forIndexPath: indexPath) as! TaskTableViewCell
        // Sets the text of the Label in the Table View Cell
        aCell.titleLabel.text = self.allTasks[indexPath.row].taskName
        return aCell
    }
    
    
}

