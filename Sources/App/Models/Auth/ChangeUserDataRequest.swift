//
//  ChangeUserDataRequest.swift
//  
//
//  Created by Grigory Stolyarov on 01.07.2021.
//

import Vapor

struct ChangeUserDataRequest: Content {
    var id_user: Int
    var username: String
    var password: String
    var name: String
    var surname: String
    var email: String
    var gender: String
    var credit_card: String
    var bio: String
}
