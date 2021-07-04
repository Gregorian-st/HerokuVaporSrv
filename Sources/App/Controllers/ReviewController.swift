//
//  ReviewController.swift
//  
//
//  Created by Grigory Stolyarov on 04.07.2021.
//

import Vapor

class ReviewController {
    
    func getProductReviews(_ req: Request) throws -> EventLoopFuture<GetProductReviewsResponse> {
        guard let body = try? req.content.decode(GetProductReviewsRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let productReviewResponse1 = ProductReview(
            id_comment: 1,
            id_user: 123,
            commentText: "Very good laptop!"
        )
        
        let productReviewResponse2 = ProductReview(
            id_comment: 2,
            id_user: 111,
            commentText: "Best laptop for the price!"
        )
        
        let productReviewsResponse: [ProductReview] = [productReviewResponse1, productReviewResponse2]
        
        let response = GetProductReviewsResponse(
            result: 1,
            id_product: 456,
            reviews: productReviewsResponse
        )
        return req.eventLoop.future(response)
    }
    
    func addProductReview(_ req: Request) throws -> EventLoopFuture<AddProductReviewResponse> {
        guard let body = try? req.content.decode(AddProductReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = AddProductReviewResponse(
            result: 1,
            id_comment: 1,
            userMessage: "Comment has been submitted to moderation"
        )
        return req.eventLoop.future(response)
    }
    
    func removeProductReview(_ req: Request) throws -> EventLoopFuture<RemoveProductReviewResponse> {
        guard let body = try? req.content.decode(RemoveProductReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = RemoveProductReviewResponse(
            result: 1
        )
        return req.eventLoop.future(response)
    }

}
