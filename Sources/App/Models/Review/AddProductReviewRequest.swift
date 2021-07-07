//
//  AddProductReviewRequest.swift
//  
//
//  Created by Grigory Stolyarov on 04.07.2021.
//

import Vapor

struct AddProductReviewRequest: Content {
    var id_user: Int
    var id_product: Int
    var commentText: String
}
