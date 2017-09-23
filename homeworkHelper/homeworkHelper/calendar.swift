//
//  calendar.swift
//  homeworkHelper
//
//  Created by Gifton Okoronkwo on 9/22/17.
//  Copyright © 2017 Gifton Okoronkwo. All rights reserved.
//

import Foundation

class calendar {
    var day = ""
    var className = ""
    var time = ""
    var room = ""
    
    init(day: String, className: String, time: String, room: String) {
        self.day = day
        self.className = className
        self.time = time
        self.room = room
    }
}
