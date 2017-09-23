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
        
//        let mScreenSize = UIScreen.main.bounds
//        let mSeparatorHeight = CGFloat(10.0) // Change height of speatator as you want
//        let mAddSeparator = UIView.init(frame: CGRect(x: 0, y: self.frame.size.height - mSeparatorHeight, width: mScreenSize.width, height: mSeparatorHeight))
//        mAddSeparator.backgroundColor = UIColor(red:0.27, green:0.44, blue:0.51, alpha:1.0) // Change backgroundColor of separator
//        self.addSubview(mAddSeparator)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
