//
//  RemoveProductReviewRequest.swift
//  
//
//  Created by Grigory Stolyarov on 04.07.2021.
//

import Vapor

struct RemoveProductReviewRequest: Content {
    var id_user: Int
    var id_product: Int
    var id_comment: Int
}
