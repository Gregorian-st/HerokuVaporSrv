//
//  BasketData.swift
//  
//
//  Created by Grigory Stolyarov on 23.07.2021.
//

import Foundation

func getBasketData(userId: Int) -> GetBasketResponse {
    guard let loggedUserIndex = loggedUsers.firstIndex(where: { $0.user.id_user == userId } )
    else { return GetBasketResponse() }
    
    return loggedUsers[loggedUserIndex].cart
}

func clearBasketData(userId: Int) -> PayBasketResponse {
    guard let loggedUserIndex = loggedUsers.firstIndex(where: { $0.user.id_user == userId } )
    else { return PayBasketResponse(result: 0) }
    
    loggedUsers[loggedUserIndex].cart.amount = 0
    loggedUsers[loggedUserIndex].cart.countGoods = 0
    loggedUsers[loggedUserIndex].cart.contents = []
    
    return PayBasketResponse(result: 1)
}

func addToBasketData(userId: Int, productId: Int, quantity: Int) -> AddToBasketResponse {
    guard let loggedUserIndex = loggedUsers.firstIndex(where: { $0.user.id_user == userId } ),
          let product = getGoodData(productId: productId)
    else { return AddToBasketResponse(result: 0) }
    
    if let productIndex = loggedUsers[loggedUserIndex].cart.contents.firstIndex(where: { $0.product.id_product == productId }) {
        loggedUsers[loggedUserIndex].cart.contents[productIndex] = ProductBasket(product: product, quantity: quantity)
    } else {
        loggedUsers[loggedUserIndex].cart.contents.append(ProductBasket(product: product, quantity: quantity))
    }
    
    return AddToBasketResponse(result: 1)
}

func deleteFromBasketData(userId: Int, productId: Int) -> DeleteFromBasketResponse {
    guard let loggedUserIndex = loggedUsers.firstIndex(where: { $0.user.id_user == userId } )
    else { return DeleteFromBasketResponse(result: 0) }
    
    if let productIndex = loggedUsers[loggedUserIndex].cart.contents.firstIndex(where: { $0.product.id_product == productId }) {
        loggedUsers[loggedUserIndex].cart.contents.remove(at: productIndex)
    }
    
    return DeleteFromBasketResponse(result: 1)
}
