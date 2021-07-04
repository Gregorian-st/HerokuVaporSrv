//
//  getProductReviewsResponse.swift
//  
//
//  Created by Grigory Stolyarov on 04.07.2021.
//

import Vapor

struct GetProductReviewsResponse: Content {
    var result: Int
    var id_product: Int
    var reviews: [ProductReview]
}
