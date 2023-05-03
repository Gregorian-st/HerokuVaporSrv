//
//  GetGoodByIdResponse.swift
//  
//
//  Created by Grigory Stolyarov on 01.07.2021.
//

import Vapor

struct GetGoodByIdResponse: Content {
    var result: Int
    var product: Product
}
