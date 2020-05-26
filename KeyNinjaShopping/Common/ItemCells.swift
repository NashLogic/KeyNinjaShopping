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
    
    func setItems(item: ShoppingItem) {
        PriceLabel.text = String(item.price)
        DescriptionLabel.text = item.description
    }
}
