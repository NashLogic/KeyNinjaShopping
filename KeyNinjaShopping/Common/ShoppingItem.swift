//
//  ShoppingItem.swift
//  KeyNinjaShopping
//
//  Created by Nicholas Glover on 26/5/20.
//  Copyright © 2020 Nicholas Glover. All rights reserved.
//

import Foundation

struct ShoppingItem : Decodable {
    let id: Int32
    let code: String
    let displayName: String
    let description: String
    let cost: Float
    let price: Float
    let isActive: Bool
    let note: String?
    let categoryId: Int32?
    let category: String?
}
