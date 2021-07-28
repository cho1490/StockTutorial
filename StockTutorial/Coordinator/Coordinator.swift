//
//  Coordinator.swift
//  StockTutorial
//
//  Created by 조상현 on 2021/07/28.
//

import UIKit

protocol Coordinator  {
    
    var navigationController: UINavigationController? { get set }
    
    func start()
    
}
