//
//  Dataseria.swift
//  ApiParser
//
//  Created by Асанкул Садыков on 9/8/22.
//

struct Dataseria: Decodable {
    let timepoint: Int?
    let cloudcover: Int?
    let seeing: Int?
    let transparency: Int?
    let lifted_index: Int?
    let rh2m: Int?
    let wind10m: Wind?
    let temp2m: Int?
    let prec_type: String?
}
