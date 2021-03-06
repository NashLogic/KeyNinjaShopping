//
//  DataItems.swift
//  KeyNinjaShopping
//
//  Created by Nicholas Glover on 26/5/20.
//  Copyright © 2020 Nicholas Glover. All rights reserved.
//

import Foundation

struct DataItems : Decodable {
    let data: [ShoppingItem]
    let error: String
    let ok: Bool
    let responseType: String
    let level: String
    
    func count() -> Int {
        return data.count
    }
}


