//
//  AssignmentTableViewCell.swift
//  homeworkHelper
//
//  Created by Gifton Okoronkwo on 9/20/17.
//  Copyright © 2017 Gifton Okoronkwo. All rights reserved.
//

import UIKit

class AssignmentTableViewCell: UITableViewCell {
    
    @IBOutlet var classNameLabel: UILabel!
    @IBOutlet var workTypeLabel: UILabel!
    @IBOutlet var dueDateLabel: UILabel!
    @IBOutlet var estTimeLabel: UILabel!
    @IBOutlet var urgencyLabel: UILabel!
    @IBOutlet var dateAssignedLabel: UILabel!
    @IBOutlet var aboutLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
