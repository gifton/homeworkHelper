//
//  assignments.swift
//  homeworkHelper
//
//  Created by Gifton Okoronkwo on 9/20/17.
//  Copyright © 2017 Gifton Okoronkwo. All rights reserved.
//

import Foundation

class assignment {
    var className = ""
    var workType = ""
    var dueDate = ""
    var isComplete = false
    var estTime = ""
    var urgency = ""
    var dateAssigned = ""
    var about = ""
    
    init(className: String, workType: String, dueDate: String, estTime: String, isComplete: Bool, urgency: String, dateAssigned: String, about: String) {
        self.className = className
        self.workType = workType
        self.dueDate = dueDate
        self.estTime = estTime
        self.isComplete = isComplete
        self.urgency = urgency
        self.dateAssigned = dateAssigned
        self.about = about
    }
}
