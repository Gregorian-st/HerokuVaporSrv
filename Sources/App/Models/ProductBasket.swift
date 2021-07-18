//
//  ProductBasket.swift
//  
//
//  Created by Grigory Stolyarov on 07.07.2021.
//

import Vapor

struct ProductBasket: Content {
    var product: Product
    var quantity: Int
}
