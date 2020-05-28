//
//  ItemCells.swift
//  KeyNinjaShopping
//
//  Created by Nicholas Glover on 26/5/20.
//  Copyright © 2020 Nicholas Glover. All rights reserved.
//

import Foundation
import UIKit

class ItemCells : UITableViewCell {
    
    @IBOutlet weak var PriceLabel: UILabel!
    @IBOutlet weak var DescriptionLabel: UILabel!
    @IBOutlet weak var DisplayNameLabel: UILabel!
    
    func setItems(item: ShoppingItem) {
        DisplayNameLabel.text = item.displayName
        DescriptionLabel.text = item.description
        PriceLabel.text = "$" + String(item.price)
    }
}
