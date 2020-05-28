//
//  NavigationController.swift
//  KeyNinjaShopping
//
//  Created by Nicholas Glover on 27/5/20.
//  Copyright © 2020 Nicholas Glover. All rights reserved.
//

import Foundation
import UIKit

class NavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        performSegue(withIdentifier: "ToRootViewController", sender: self)
//        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
}
