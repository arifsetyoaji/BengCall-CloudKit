//
//  BookingCell.swift
//  BengCall-CloudKit
//
//  Created by Muhammad Arif Setyo Aji on 20/05/20.
//  Copyright © 2020 Muhammad Arif Setyo Aji. All rights reserved.
//

import UIKit

class BookingCell: UITableViewCell {
    
    @IBOutlet weak var customerName: UILabel!
    @IBOutlet weak var autoshopName: UILabel!
    @IBOutlet weak var motorType: UILabel!
    @IBOutlet weak var licensePlateNumber: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
