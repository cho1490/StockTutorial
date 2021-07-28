//
//  StockListController.swift
//  StockTutorial
//
//  Created by 조상현 on 2021/07/28.
//

import UIKit

class StockListController: BaseViewController {
    
    let selfView = StockListView()
    
    override func configureUI() {
        view.addSubview(selfView)
        selfView.translatesAutoresizingMaskIntoConstraints = false
        selfView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        selfView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        selfView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        selfView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        selfView.searchViewController.delegate = self
        selfView.searchViewController.searchResultsUpdater = self
        navigationItem.searchController = selfView.searchViewController
    }
    
}

extension StockListController: UISearchControllerDelegate {
    
}

extension StockListController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
}
