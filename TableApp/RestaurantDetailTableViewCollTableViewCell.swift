//
//  RestaurantDetailTableViewCollTableViewCell.swift
//  FoodPin
//
//  Created by Kamil Szalek on 11/04/2017.
//  Copyright © 2017 Kamil Szalek. All rights reserved.
//

import UIKit

class RestaurantDetailTableViewCollTableViewCell: UITableViewCell {
    
    @IBOutlet var fieldLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
