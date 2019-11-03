//
//  Inventory.swift
//  CodeableAndJSONDecoding
//
//  Created by Danae N Nash on 11/04/19.
//  Copyright © 2019 Danae N Nash. All rights reserved.
//

import Foundation

struct ItemInventory: Codable{
    var status: String
    var products: [Product]
    
    enum CodingKeys: String, CodingKey{
        case status
        case products
    }
}

struct Product: Codable{
    var id: Int
    var category: String
    var title: String
    var price: Double
    var stockedQuantity: Int
}
