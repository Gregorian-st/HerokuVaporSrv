//
//  CatalogDataRequest.swift
//  
//
//  Created by Grigory Stolyarov on 01.07.2021.
//

import Vapor

struct CatalogDataRequest: Content {
    var page_number: Int
    var id_category: Int
}
