//
//  ReportInfoTableViewCell.swift
//  ZipLookUp
//
//  Created by Rajeshnath Chyarngayil Vishwanath on 31/05/17.
//  Copyright © 2017 Rajeshnath Chyarngayil Vishwanath. All rights reserved.
//

import UIKit

class ReportInfoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var dataFormatValueLabel: UILabel!
    @IBOutlet weak var sizeValueLabel: UILabel!
    @IBOutlet weak var timeValueLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
