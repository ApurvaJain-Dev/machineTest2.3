//
//  FlowerTableViewCell.swift
//  machineTest2.3
//
//  Created by rpsindia on 12/09/19.
//  Copyright © 2019 Apurva. All rights reserved.
//

import UIKit

class FlowerTableViewCell: UITableViewCell {

   
    @IBOutlet weak var flowerImageView: UIImageView!
    
    
    @IBOutlet weak var labelText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
