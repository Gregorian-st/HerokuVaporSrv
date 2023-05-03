//
//  LogoutRequest.swift
//  
//
//  Created by Grigory Stolyarov on 01.07.2021.
//

import Vapor

struct LogoutRequest: Content {
    var id_user: Int
}
