//
//  BaseViewModel.swift
//  StockTutorial
//
//  Created by 조상현 on 2021/07/31.
//

import Combine

class BaseViewModel {
    var subscriber: Set<AnyCancellable> = .init()
    
    init() {
        subscriber = .init()
    }
}
