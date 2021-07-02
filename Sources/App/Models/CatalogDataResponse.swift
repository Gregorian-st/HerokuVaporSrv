//
//  CatalogDataResponse.swift
//  
//
//  Created by Grigory Stolyarov on 01.07.2021.
//

import Vapor

struct CatalogDataResponse: Content {
    var page_number: Int
    var products: [Product]
}
