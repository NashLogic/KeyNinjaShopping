//
//  ItemViewController.swift
//  KeyNinjaShopping
//
//  Created by Nicholas Glover on 28/5/20.
//  Copyright © 2020 Nicholas Glover. All rights reserved.
//

import Foundation
import UIKit

class ItemViewController : UIViewController {
        
    var tempDisplayName:String = ""
    var tempDescription:String = ""
    var tempPrice:String = ""
    
    @IBOutlet weak var DisplayNameLabel: UILabel!
    @IBOutlet weak var DescriptionLabel: UILabel!
    @IBOutlet weak var PriceLabel: UILabel!
    @IBOutlet weak var Stepper: UIStepper!
    
    override func viewDidLoad() {
        DisplayNameLabel.text = tempDisplayName
        DescriptionLabel.text = tempDescription
        PriceLabel.text = tempPrice
    }
    
    
    
}
