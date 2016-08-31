//
//  EventCell.swift
//  Checker
//
//  Created by Vinicius Carvalho on 31/08/16.
//  Copyright © 2016 Vinicius Carvalho. All rights reserved.
//

import UIKit

class EventCell: UITableViewCell {

    @IBOutlet weak var eventTitleLabel: UILabel!
    @IBOutlet weak var eventDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
