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
        
        return req.eventLoop.future(userRegister(loginName: body.username,
                                                 password: body.password,
                                                 name: body.name,
                                                 surname: body.surname,
                                                 email: body.email,
                                                 gender: body.gender,
                                                 creditCard: body.credit_card,
                                                 bio: body.bio))
    }
    
    func login(_ req: Request) throws -> EventLoopFuture<LoginResponse> {
        guard let body = try? req.content.decode(LoginRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        return req.eventLoop.future(userLogin(login: body.username, password: body.password))
    }
    
    func logout(_ req: Request) throws -> EventLoopFuture<LogoutResponse> {
        guard let body = try? req.content.decode(LogoutRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        userLogout(userId: body.id_user)
        
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
        
        return req.eventLoop.future(userChangeData(userId: body.id_user,
                                                   loginName: body.username,
                                                   password: body.password,
                                                   name: body.name,
                                                   surname: body.surname,
                                                   email: body.email,
                                                   gender: body.gender,
                                                   creditCard: body.credit_card,
                                                   bio: body.bio))
    }
    
}
