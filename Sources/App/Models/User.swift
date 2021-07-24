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
    
    init() {
        id_user = 0
        user_login = ""
        user_name = ""
        user_lastname = ""
        email = ""
        gender = ""
        credit_card = ""
        bio = ""
    }
    
    init(id_user: Int,
         user_login: String,
         user_name: String,
         user_lastname: String,
         email: String,
         gender: String,
         credit_card: String,
         bio: String) {
        self.id_user = id_user
        self.user_login = user_login
        self.user_name = user_name
        self.user_lastname = user_lastname
        self.email = email
        self.gender = gender
        self.credit_card = credit_card
        self.bio = bio
    }
}
