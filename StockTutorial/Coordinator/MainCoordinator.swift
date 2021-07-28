//
//  MainCoordinator.swift
//  StockTutorial
//
//  Created by 조상현 on 2021/07/28.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController?
    
    func start() {
        let rootViewController = StockListController()
        navigationController?.setViewControllers([rootViewController], animated: false)
    }
    
    
}
