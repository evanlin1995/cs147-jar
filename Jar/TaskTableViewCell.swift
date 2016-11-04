//
//  TaskTableViewCell.swift
//  Jar
//
//  Created by Evan Lin on 10/31/16.
//  Copyright (c) 2016 Evan Lin. All rights reserved.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var titleLabel: UILabel!
}
