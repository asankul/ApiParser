//
//  Product.swift
//  ApiParser
//
//  Created by Асанкул Садыков on 9/8/22.
//

struct Product: Decodable {
    let product: String?
    let `init`: String?
    let dataseries: [Dataseria]?
}
