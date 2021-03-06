//
//  StockDetailUseCase.swift
//  StockTutorial
//
//  Created by ์กฐ์ํ on 2021/07/31.
//

import Combine

class StockDetailUseCase {
    
    private let stockRepository: StockRepository
    
    init(stockRepository: StockRepository) {
        self.stockRepository = stockRepository
    }
    
    func fetchTimeSeriesPublisher(keywords: String) -> AnyPublisher<TimeSeriesMonthlyAdjusted, Error> {
        return stockRepository.fetchTimeSeriesPublisher(keywords: keywords)
    }
    
}
