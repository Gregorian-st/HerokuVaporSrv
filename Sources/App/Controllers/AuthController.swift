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
        
        var userResponse = User(
            id_user: 0,
            user_login: "",
            user_name: "",
            user_lastname: "",
            email: "",
            gender: "",
            credit_card: "",
            bio: ""
        )
        
        var response = LoginResponse(
            result: 0,
            user: userResponse
        )
        
        if body.username == "Greg" && body.password == "GregPWD" {
            userResponse = User(
                id_user: 123,
                user_login: "Greg",
                user_name: "Gregory",
                user_lastname: "Joiner",
                email: "user@domain.com",
                gender: "M",
                credit_card: "1234-5678-9012-3456",
                bio: "Some biography"
            )
            response.result = 1
            response.user = userResponse
        }
        
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
