//
//  RegisterResponse.swift
//  
//
//  Created by Grigory Stolyarov on 01.07.2021.
//

import Vapor

struct RegisterResponse: Content {
    var result: Int
    var userMessage: String?
    var errorMessage: String?
}
