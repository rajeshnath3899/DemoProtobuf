//
//  ZipInfoTableViewCell.swift
//  ZipLookUp
//
//  Created by Rajeshnath Chyarngayil Vishwanath on 26/05/17.
//  Copyright © 2017 Rajeshnath Chyarngayil Vishwanath. All rights reserved.
//

import UIKit

class ZipInfoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cityNameTextLabel: UILabel!
    @IBOutlet weak var stateNameTextLabel: UILabel!
    @IBOutlet weak var zipCodeTextLabel: UILabel!
    @IBOutlet weak var populationTextLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
