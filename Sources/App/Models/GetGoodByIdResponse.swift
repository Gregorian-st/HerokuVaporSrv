//
//  GetGoodByIdResponse.swift
//  
//
//  Created by Grigory Stolyarov on 01.07.2021.
//

import Vapor

struct GetGoodByIdResponse: Content {
    var result: Int
    var product_name: String
    var product_price: Float
    var product_description: String
}
