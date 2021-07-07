//
//  GetBasketResponse.swift
//  
//
//  Created by Grigory Stolyarov on 07.07.2021.
//

import Vapor

struct GetBasketResponse: Content {
    var amount: Float
    var countGoods: Int
    var contents: [ProductBasket]
}
