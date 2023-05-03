//
//  GetBasketResponse.swift
//  
//
//  Created by Grigory Stolyarov on 07.07.2021.
//

import Vapor

struct GetBasketResponse: Content {
    var amount: Float
    var countGoods: Int
    var contents: [ProductBasket] {
        didSet {
            var sum: Float = 0
            contents.forEach { basket in
                sum += basket.product.price * Float(basket.quantity)
            }
            self.amount = sum
            self.countGoods = contents.count
            
        }
    }
    
    init() {
        amount = 0
        countGoods = 0
        contents = []
    }
    
    init(amount: Float, countGoods: Int, contents: [ProductBasket]) {
        self.amount = amount
        self.countGoods = countGoods
        self.contents = contents
    }
}
