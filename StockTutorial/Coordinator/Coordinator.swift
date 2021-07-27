//
//  Coordinator.swift
//  StockTutorial
//
//  Created by 조상현 on 2021/07/28.
//

import UIKit

class Coordinator {
    
    func start(window: UIWindow, rootViewController: UIViewController) {
        let rootViewController = UINavigationController(rootViewController: rootViewController)
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }
    
}
