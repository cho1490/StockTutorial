//
//  StockDetailViewModel.swift
//  StockTutorial
//
//  Created by 조상현 on 2021/07/31.
//

import Combine

class StockDetailViewModel: BaseViewModel {
    
    @Published var loading = false
    @Published var errorMessage: String?
    @Published var timeSeriesMonthlyAdjusted: TimeSeriesMonthlyAdjusted?
    @Published var stock: Stock?
    
    let usecase: StockDetailUseCase
    
    init(usecase: StockDetailUseCase) {
        self.usecase = usecase
        super.init()
    }
    
    func viewDidLoad(symbol: String, stock: Stock) {
        self.stock = stock
        loading = true
        usecase.fetchTimeSeriesPublisher(keywords: symbol).sink { completion in
            self.loading = false
            switch completion {
            case .failure(let error):
                self.errorMessage = error.localizedDescription
            case .finished:
                break
            }
        } receiveValue: { value in
            let timeSeriesMonthlyAdjusted = value
            timeSeriesMonthlyAdjusted.generateMonthInfos()
            self.timeSeriesMonthlyAdjusted = timeSeriesMonthlyAdjusted
        }.store(in: &subscriber)
    }
    
}
