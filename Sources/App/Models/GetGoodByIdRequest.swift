//
//  GetGoodByIdRequest.swift
//  
//
//  Created by Grigory Stolyarov on 01.07.2021.
//

import Vapor

struct GetGoodByIdRequest: Content {
    var id_product: Int
}
