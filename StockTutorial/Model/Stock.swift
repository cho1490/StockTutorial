//
//  Stock.swift
//  StockTutorial
//
//  Created by 조상현 on 2021/07/28.
//

import Foundation

struct StockResult: Decodable {
    var items: [Stock]
    
    enum CodingKeys: String, CodingKey {
        case items = "bestMatches"
    }
}

struct Stock: Decodable {
    var symbol: String?
    var name: String?
    var type: String?
    var currency: String?
    
    enum CodingKeys: String, CodingKey {
        case symbol = "1. symbol"
        case name = "2. name"
        case type = "3. type"
        case currency = "8. currency"
    }
}