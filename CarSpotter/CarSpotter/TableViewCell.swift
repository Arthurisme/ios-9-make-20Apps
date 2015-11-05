//
//  TableViewCell.swift
//  CarSpotter
//
//  Created by Arthur on 2015-11-05.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
 
    @IBOutlet weak var CarMakeLabel: UILabel!
    @IBOutlet weak var CarModelLabel: UILabel!
    @IBOutlet weak var CarYearLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
