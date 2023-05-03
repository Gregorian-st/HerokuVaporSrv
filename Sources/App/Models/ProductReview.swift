//
//  ProductReview.swift
//  
//
//  Created by Grigory Stolyarov on 04.07.2021.
//

import Vapor

struct ProductReview: Content {
    var id_comment: Int
    var id_user: Int
    var commentText: String
}
