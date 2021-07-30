//
//  TimeSeriesMonthlyAdjusted.swift
//  StockTutorial
//
//  Created by 조상현 on 2021/07/30.
//

import Foundation

class TimeSeriesMonthlyAdjusted: Decodable {
    let meta: Meta
    let series: [String: OHLC]
    
    enum CodingKeys: String, CodingKey {
        case meta = "Meta Data"
        case series = "Monthly Adjusted close"
    }
    
    struct Meta: Decodable {
        let symbol: String

        enum CodingKeys: String, CodingKey {
            case symbol = "2. Symbol"
        }
    }
    
    struct OHLC: Decodable {
        let open: String
        let close: String
        let adjustedClose: String
        
        enum CodingKeys: String, CodingKey {
            case open = "1. open"
            case close = "4. close"
            case adjustedClose = "5. adjusted close"
        }
    }
    
   
}
