//
//  LoginResponse.swift
//  
//
//  Created by Grigory Stolyarov on 01.07.2021.
//

import Vapor

struct LoginResponse: Content {
    var result: Int
    var user: User?
}
