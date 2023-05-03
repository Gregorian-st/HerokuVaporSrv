//
//  AddToBasketRequest.swift
//  
//
//  Created by Grigory Stolyarov on 07.07.2021.
//

import Vapor

struct AddToBasketRequest: Content {
    var id_user: Int
    var id_product: Int
    var quantity: Int
}
