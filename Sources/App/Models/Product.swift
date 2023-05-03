//
//  Product.swift
//  
//
//  Created by Grigory Stolyarov on 01.07.2021.
//

import Vapor

struct Product: Content {
    var id_product: Int
    var name: String
    var image: String
    var price: Float
    var description: String
}
