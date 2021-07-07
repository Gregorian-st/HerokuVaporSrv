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
        
        let response = AddToBasketResponse(
            result: 1
        )
        return req.eventLoop.future(response)
    }
    
    func deleteFromBasket(_ req: Request) throws -> EventLoopFuture<DeleteFromBasketResponse> {
        guard let body = try? req.content.decode(DeleteFromBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = DeleteFromBasketResponse(
            result: 1
        )
        return req.eventLoop.future(response)
    }
    
    func getBasket(_ req: Request) throws -> EventLoopFuture<GetBasketResponse> {
        guard let body = try? req.content.decode(GetBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let productResponse1 = ProductBasket(
            id_product: 123,
            product_name: "Mouse",
            price: 200.50,
            quantity: 1
        )
        
        let productResponse2 = ProductBasket(
            id_product: 456,
            product_name: "Laptop",
            price: 110000,
            quantity: 1
        )
        
        let productsResponse: [ProductBasket] = [productResponse1, productResponse2]
        
        let response = GetBasketResponse(
            amount: 110200.50,
            countGoods: 2,
            contents: productsResponse
        )
        return req.eventLoop.future(response)
    }

    func payBasket(_ req: Request) throws -> EventLoopFuture<PayBasketResponse> {
        guard let body = try? req.content.decode(PayBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = PayBasketResponse(
            result: 1
        )
        return req.eventLoop.future(response)
    }
    
}
