//
//  ReviewData.swift
//  
//
//  Created by Grigory Stolyarov on 22.07.2021.
//

import Foundation

struct ProductReviews {
    var id_product: Int
    var reviews: [ProductReview]
}

var reviews: [ProductReviews] = [
    ProductReviews(id_product: 101,
                   reviews: [
                    ProductReview(id_comment: 1,
                                  id_user: 123,
                                  commentText: "Very good mouse!"),
                    ProductReview(id_comment: 2,
                                  id_user: 111,
                                  commentText: "Best mouse for the price!")
                   ]),
    ProductReviews(id_product: 102,
                   reviews: [
                    ProductReview(id_comment: 1,
                                  id_user: 123,
                                  commentText: "Very good laptop!"),
                    ProductReview(id_comment: 2,
                                  id_user: 111,
                                  commentText: "Best laptop for the price!")
                   ]),
    ProductReviews(id_product: 103,
                   reviews: [
                    ProductReview(id_comment: 1,
                                  id_user: 123,
                                  commentText: "Very good tablet!"),
                    ProductReview(id_comment: 2,
                                  id_user: 111,
                                  commentText: "Best tablet for the price!")
                   ]),
    ProductReviews(id_product: 104,
                   reviews: [
                    ProductReview(id_comment: 1,
                                  id_user: 123,
                                  commentText: "Very good graphic card!"),
                    ProductReview(id_comment: 2,
                                  id_user: 111,
                                  commentText: "Best graphic card for the price!")
                   ]),
    ProductReviews(id_product: 105,
                   reviews: [
                    ProductReview(id_comment: 1,
                                  id_user: 123,
                                  commentText: "Very good router!"),
                    ProductReview(id_comment: 2,
                                  id_user: 111,
                                  commentText: "Best router for the price!")
                   ]),
    ProductReviews(id_product: 106,
                   reviews: [
                    ProductReview(id_comment: 1,
                                  id_user: 123,
                                  commentText: "Very good printer!"),
                    ProductReview(id_comment: 2,
                                  id_user: 111,
                                  commentText: "Best printer for the price!")
                   ]),
    ProductReviews(id_product: 107,
                   reviews: [
                    ProductReview(id_comment: 1,
                                  id_user: 123,
                                  commentText: "Very good monitor!"),
                    ProductReview(id_comment: 2,
                                  id_user: 111,
                                  commentText: "Best monitor for the price!")
                   ]),
    ProductReviews(id_product: 108,
                   reviews: [
                    ProductReview(id_comment: 1,
                                  id_user: 123,
                                  commentText: "Very good keyboard!"),
                    ProductReview(id_comment: 2,
                                  id_user: 111,
                                  commentText: "Best keyboard for the price!")
                   ]),
    ProductReviews(id_product: 109,
                   reviews: [
                    ProductReview(id_comment: 1,
                                  id_user: 123,
                                  commentText: "Very good webcam!"),
                    ProductReview(id_comment: 2,
                                  id_user: 111,
                                  commentText: "Best webcam for the price!")
                   ]),
    ProductReviews(id_product: 110,
                   reviews: [
                    ProductReview(id_comment: 1,
                                  id_user: 123,
                                  commentText: "Very good HDD!"),
                    ProductReview(id_comment: 2,
                                  id_user: 111,
                                  commentText: "Best HDD for the price!")
                   ])
]

func getProductReviewData(productId: Int) -> [ProductReview]? {
    guard let productReviews = reviews.first(where: { $0.id_product == productId })
    else { return nil }
    
    return productReviews.reviews
}

func addProductReviewData(userId: Int, productId: Int, commentText: String) -> Int {
    
    guard let _ = goods.firstIndex(where: { $0.id_product == productId } )
    else { return 0 }
    
    let index = reviews.firstIndex(where: { $0.id_product == productId }) ?? reviews.count
    if index == reviews.count {
        reviews.append(ProductReviews(id_product: productId, reviews: []))
    }
    
    let lastCommentId = reviews[index].reviews.map {$0.id_comment}.max() ?? 0
    let newCommentId = lastCommentId + 1
    reviews[index].reviews.append(ProductReview(id_comment: newCommentId,
                                                id_user: userId,
                                                commentText: commentText))
    
    return newCommentId
}
