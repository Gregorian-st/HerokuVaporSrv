//
//  AddProductReviewResponse.swift
//  
//
//  Created by Grigory Stolyarov on 04.07.2021.
//

import Vapor

struct AddProductReviewResponse: Content {
    var result: Int
    var id_comment: Int
    var userMessage: String
}
