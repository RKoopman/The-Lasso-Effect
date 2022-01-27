//
//  QuoteResponse.swift
//  The Lasso Effect
//
//  Created by Raoul Koopman on 12/13/21.
//

import Foundation

//struct Results: Decodable {
//    let hits: [QuoteModel]
//}


struct QuoteModel: Decodable {

    var quote: String
    var author: String
    var profile_img: String
    var tag: String
}
