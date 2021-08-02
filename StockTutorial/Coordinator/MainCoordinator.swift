//
//  MainCoordinator.swift
//  StockTutorial
//
//  Created by 조상현 on 2021/07/28.
//

import UIKit
import Pure

class MainCoordinator: Coordinator, FactoryModule {
    
    struct Dependency {
        let stockListControllerFactory: () -> StockListController
        let stockDetailControllerFactory: (Stock) -> StockDetailController
        let selectDateControllerFactory: () -> SelectDateController
    }
    
    var navigationController: UINavigationController?
    
    let rootViewController: StockListController
    let stockDetailControllerFactory: (Stock) -> StockDetailController
    let selectDateControllerFactory: () -> SelectDateController
    
    required init(dependency: Dependency, payload: ()) {
        rootViewController = dependency.stockListControllerFactory()
        stockDetailControllerFactory = dependency.stockDetailControllerFactory
        selectDateControllerFactory = dependency.selectDateControllerFactory
    }
    
    func start() {
        rootViewController.coordinator = self
        navigationController?.setViewControllers([rootViewController], animated: false)
    }
    
    func stockCellTapped(item: Stock) {
        let viewController = stockDetailControllerFactory(item)
        viewController.coordinator = self
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func dateInputTextFieldTapped() {
        let viewController = selectDateControllerFactory()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
}
