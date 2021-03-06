//
//  BaseViewModel.swift
//  StockTutorial
//
//  Created by ์กฐ์ํ on 2021/07/31.
//

import Combine

class BaseViewModel {
    var subscriber: Set<AnyCancellable> = .init()
    
    init() {
        subscriber = .init()
    }
}
