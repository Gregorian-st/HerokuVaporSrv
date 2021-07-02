//
//  AuthController.swift
//  
//
//  Created by Grigory Stolyarov on 01.07.2021.
//

import Vapor

class AuthController {
    
    func register(_ req: Request) throws -> EventLoopFuture<RegisterResponse> {
        guard let body = try? req.content.decode(RegisterRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = RegisterResponse(
            result: 1,
            userMessage: "Registration successful",
            errorMessage: nil
        )
        return req.eventLoop.future(response)
    }
    
    func login(_ req: Request) throws -> EventLoopFuture<LoginResponse> {
        guard let body = try? req.content.decode(LoginRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let userResponse = User(
            id_user: 123,
            user_login: "geekbrains",
            user_name: "John",
            user_lastname: "Doe"
        )
        
        let response = LoginResponse(
            result: 1,
            user: userResponse
        )
        return req.eventLoop.future(response)
    }
    
    func logout(_ req: Request) throws -> EventLoopFuture<LogoutResponse> {
        guard let body = try? req.content.decode(LogoutRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = LogoutResponse(
            result: 1
        )
        return req.eventLoop.future(response)
    }
    
    func changeUserData(_ req: Request) throws -> EventLoopFuture<ChangeUserDataResponse> {
        guard let body = try? req.content.decode(ChangeUserDataRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = ChangeUserDataResponse(
            result: 1
        )
        return req.eventLoop.future(response)
    }
    
}
