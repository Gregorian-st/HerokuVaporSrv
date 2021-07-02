//
//  ProductController.swift
//  
//
//  Created by Grigory Stolyarov on 01.07.2021.
//

import Vapor

class ProductController {
    
    func getGoodById(_ req: Request) throws -> EventLoopFuture<GetGoodByIdResponse> {
        guard let body = try? req.content.decode(GetGoodByIdRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = GetGoodByIdResponse(
            result: 1,
            product_name: "Mouse",
            product_price: 200.50,
            product_description: "Mouse for PC"
        )
        return req.eventLoop.future(response)
    }
    
    func catalogData(_ req: Request) throws -> EventLoopFuture<CatalogDataResponse> {
        guard let body = try? req.content.decode(CatalogDataRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let productResponse1 = Product(
            id_product: 123,
            product_name: "Mouse",
            price: 200.50
        )
        
        let productResponse2 = Product(
            id_product: 456,
            product_name: "Laptop",
            price: 110000
        )
        
        let productsResponse: [Product] = [productResponse1, productResponse2]
        
        let response = CatalogDataResponse(
            page_number: 1,
            products: productsResponse
        )
        return req.eventLoop.future(response)
    }
        
}
