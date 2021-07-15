//
//  User.swift
//  
//
//  Created by Grigory Stolyarov on 01.07.2021.
//

import Vapor

struct User: Content {
    var id_user: Int
    var user_login: String
    var user_name: String
    var user_lastname: String
    var email: String
    var gender: String
    var credit_card: String
    var bio: String
}
