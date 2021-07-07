//
//  getProductReviewsRequest.swift
//  
//
//  Created by Grigory Stolyarov on 04.07.2021.
//

import Vapor

struct GetProductReviewsRequest: Content {
    var id_product: Int
}
