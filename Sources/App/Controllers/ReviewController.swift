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
        
        let productReviewsResponse = getProductReviewData(productId: body.id_product)
        
        let response = GetProductReviewsResponse(
            result: productReviewsResponse != nil ? 1 : 0,
            id_product: body.id_product,
            reviews: productReviewsResponse ?? []
        )
        return req.eventLoop.future(response)
    }
    
    func addProductReview(_ req: Request) throws -> EventLoopFuture<AddProductReviewResponse> {
        guard let body = try? req.content.decode(AddProductReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        var response: AddProductReviewResponse
        
        let responseCommentId = addProductReviewData(userId: body.id_user,
                                                    productId: body.id_product,
                                                    commentText: body.commentText)
        
        if responseCommentId != 0 {
            response = AddProductReviewResponse(
                result: 1,
                id_comment: responseCommentId,
                userMessage: "Comment has been submitted to moderation"
            )
        } else {
            response = AddProductReviewResponse(
                result: 0,
                id_comment: 0,
                userMessage: "Wrong request!"
            )
        }
        
        
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
