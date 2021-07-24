//
//  BasketController.swift
//  
//
//  Created by Grigory Stolyarov on 06.07.2021.
//

import Vapor

class BasketController {
    
    func addToBasket(_ req: Request) throws -> EventLoopFuture<AddToBasketResponse> {
        guard let body = try? req.content.decode(AddToBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        return req.eventLoop.future(addToBasketData(userId: body.id_user,
                                                    productId: body.id_product,
                                                    quantity: body.quantity))
    }
    
    func deleteFromBasket(_ req: Request) throws -> EventLoopFuture<DeleteFromBasketResponse> {
        guard let body = try? req.content.decode(DeleteFromBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        return req.eventLoop.future(deleteFromBasketData(userId: body.id_user, productId: body.id_product))
    }
    
    func getBasket(_ req: Request) throws -> EventLoopFuture<GetBasketResponse> {
        guard let body = try? req.content.decode(GetBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        return req.eventLoop.future(getBasketData(userId: body.id_user))
    }

    func payBasket(_ req: Request) throws -> EventLoopFuture<PayBasketResponse> {
        guard let body = try? req.content.decode(PayBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        return req.eventLoop.future(clearBasketData(userId: body.id_user))
    }
    
}
