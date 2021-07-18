//
//  GoodsData.swift
//  
//
//  Created by Grigory Stolyarov on 18.07.2021.
//

import Foundation

let goods: [Product] = [
    Product(id_product: 101,
            name: "Mouse Defender Cyber MB-560L",
            image: "https://avatars.mds.yandex.net/get-mpic/4334746/img_id1158350333054399525.png/orig",
            price: 126,
            description: "Gaming mouse"),
    Product(id_product: 102,
            name: "Laptop HP Pavilion Gaming",
            image: "https://avatars.mds.yandex.net/get-marketpic/1674429/market_xJQmuyYGZxQy_YwJQghJHA/orig",
            price: 63200,
            description: "AMD Ryzen 5 3000 MHz (4600H)/8192Mb/512Gb SSD/15.6'/1920x1080/nVidia GeForce GTX 1650 GDDR6/DOS"),
    Product(id_product: 103,
            name: "Lenovo ThinkPad X1 Tablet",
            image: "https://avatars.mds.yandex.net/get-marketpic/1538435/market_mq6YiG9ulCWSHVj5XkRQyQ/orig",
            price: 128000,
            description: "Core i5 Quad 1600 MHz (8250U)/8192Mb/256Gb SSD/13'/3000x2000/Win 10 Pro"),
    Product(id_product: 104,
            name: "Graphic Card PALIT GeForce RTX 3070",
            image: "https://avatars.mds.yandex.net/get-marketpic/1674916/market_r3qnjA229FF5QuwxkN2w5A/orig",
            price: 119990,
            description: "PALIT GeForce RTX 3070 8192Mb GAMINGPRO (NE63070019P2-1041A)"),
    Product(id_product: 105,
            name: "Wi-Fi Router Keenetic Speedster",
            image: "https://avatars.mds.yandex.net/get-mpic/1525215/img_id5856578951727714696.jpeg/orig",
            price: 4303,
            description: "Wi-Fi Router Keenetic Speedster (KN-3010), White Color"),
    Product(id_product: 106,
            name: "Brother DCP-T520W Printer",
            image: "https://avatars.mds.yandex.net/get-mpic/4792566/img_id5880303278598140081.png/orig",
            price: 15437,
            description: "Core i5 Quad 1600 MHz (8250U)/8192Mb/256Gb SSD/13'/3000x2000/Win 10 Pro"),
    Product(id_product: 107,
            name: "Monitor LG 29WN600 29'",
            image: "https://avatars.mds.yandex.net/get-mpic/4591438/img_id675458542753753664.jpeg/orig",
            price: 16518,
            description: "Monitor LG 29WN600 29', IPS, 75Hz, White Color"),
    Product(id_product: 108,
            name: "Logitech Keyboard K280e",
            image: "https://avatars.mds.yandex.net/get-mpic/3986638/img_id4785477218584490650.jpeg/orig",
            price: 1630,
            description: "Logitech Corded Keyboard K280e Black USB"),
    Product(id_product: 109,
            name: "Logitech HD Webcam C270",
            image: "https://avatars.mds.yandex.net/get-mpic/4362876/img_id1998744791283943784.png/13hq",
            price: 1674,
            description: "Logitech HD Webcam C270, 1280x720"),
    Product(id_product: 110,
            name: "HDD Toshiba Canvio Ready 3.2 2TB",
            image: "https://avatars.mds.yandex.net/get-mpic/4700988/img_id8879209827499200001.jpeg/orig",
            price: 4959,
            description: "External HDD Toshiba Canvio Ready 3.2 2TB, Black Color")
]

func getGood(productId: Int) -> Product? {
    let index = productId - 101
    if (0...goods.endIndex - 1) ~= index {
        return goods[index]
    } else {
        return nil
    }
}

func getGoodResponse(productId: Int) -> GetGoodByIdResponse {
    guard let product = getGood(productId: productId)
    else {
        return GetGoodByIdResponse(result: 0, product: Product(id_product: productId,
                                                               name: "",
                                                               image: "",
                                                               price: 0,
                                                               description: ""))
    }
    return GetGoodByIdResponse(result: 1, product: product)
}

func getGoodNotEmpty(productId: Int) -> Product {
    guard let product = getGood(productId: productId)
    else {
        return Product(id_product: productId,
                       name: "",
                       image: "",
                       price: 0,
                       description: "")
    }
    return product
}

func getFullCatalog() -> [Product] {
    return goods
}
