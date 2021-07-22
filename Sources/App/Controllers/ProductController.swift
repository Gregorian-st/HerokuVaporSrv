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
        
        let response = getGoodDataResponse(productId: body.id_product)        
        return req.eventLoop.future(response)
    }
    
    func catalogData(_ req: Request) throws -> EventLoopFuture<CatalogDataResponse> {
        guard let body = try? req.content.decode(CatalogDataRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let productsResponse = getFullCatalog()
        
        let response = CatalogDataResponse(
            page_number: 1,
            products: productsResponse
        )
        return req.eventLoop.future(response)
    }
        
}
