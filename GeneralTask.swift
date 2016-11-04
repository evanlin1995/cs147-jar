//
//  GeneralTask.swift
//  Jar
//
//  Created by Evan Lin on 10/31/16.
//  Copyright (c) 2016 Evan Lin. All rights reserved.
//

import UIKit


class GeneralTask: NSObject {
    var taskName: String
    var assignedTo: String
    var deadline: NSDate
    var duration: Int
    
    init(taskName: String, assignedTo: String, deadline: NSDate, duration: Int) {
        self.taskName = taskName
        self.assignedTo = assignedTo
        self.deadline = deadline
        self.duration = duration
    }
}
