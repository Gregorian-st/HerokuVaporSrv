//
//  ProductBasket.swift
//  
//
//  Created by Grigory Stolyarov on 07.07.2021.
//

import Vapor

struct ProductBasket: Content {
    var id_product: Int
    var product_name: String
    var price: Float
    var quantity: Int
}
