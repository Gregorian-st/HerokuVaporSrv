//
//  RegisterRequest.swift
//  
//
//  Created by Grigory Stolyarov on 01.07.2021.
//

import Vapor

struct RegisterRequest: Content {
    var username: String
    var password: String
    var email: String
    var gender: String
    var credit_card: String
    var bio: String
}
