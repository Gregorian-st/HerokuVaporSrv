//
//  LoginRequest.swift
//  
//
//  Created by Grigory Stolyarov on 01.07.2021.
//

import Vapor

struct LoginRequest: Content {
    var username: String
    var password: String
    var cookie: String
}
