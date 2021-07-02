//
//  ErrorResponse.swift
//  
//
//  Created by Grigory Stolyarov on 01.07.2021.
//

import Vapor

struct ErrorResponse: Content {
    var result: Int
    var errorMessage: String
}
