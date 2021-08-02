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
    
    var monthInfos: [MonthInfo] = []
    
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
    
    func generateMonthInfos() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        var monthInfos: [MonthInfo] = []
        let sortedSeries = series.sorted { $0.key > $1.key }
        
        sortedSeries.forEach { (dateString, ohlc) in
            if let date = dateFormatter.date(from: dateString), let adjustedOpen = generateAdjustedOpen(ohlc: ohlc), let adjustedClose = Double(ohlc.adjustedClose) {
                let monthInfo: MonthInfo = .init(date: date, adjustedOpen: adjustedOpen, adjustedClose: adjustedClose)
                monthInfos.append(monthInfo)
            }
        }
        
        self.monthInfos = monthInfos
    }
    
    private func generateAdjustedOpen(ohlc: OHLC) -> Double? {
        var adjustedOpen: Double?
        
        if let open = Double(ohlc.open), let close = Double(ohlc.close), let adjustedClose = Double(ohlc.adjustedClose) {
            adjustedOpen = open * ( adjustedClose / close )
        }
        
        return adjustedOpen
    }
   
}
