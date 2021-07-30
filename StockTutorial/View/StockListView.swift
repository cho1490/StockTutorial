//
//  StockListView.swift
//  StockTutorial
//
//  Created by 조상현 on 2021/07/28.
//

import UIKit

class StockListView: BaseView {
    
    let tableView: UITableView = {
        let view = UITableView()
        view.backgroundColor = .systemBackground
        return view
    }()
    
    let searchViewController: UISearchController = {
        let view = UISearchController(searchResultsController: nil)
        view.searchBar.placeholder = "Enter a company name or symbol"
        view.obscuresBackgroundDuringPresentation = false
        return view
    }()
    
    let emptyView = EmptyView()
    
    let loadingView = LoadingView()
    
    override func configureUI() {
        addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        tableView.register(StockCell.self, forCellReuseIdentifier: StockCell.identifier)
        tableView.separatorStyle = .none
        
        addSubview(emptyView)
        emptyView.translatesAutoresizingMaskIntoConstraints = false
        emptyView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        emptyView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        emptyView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        emptyView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        addSubview(loadingView)
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        loadingView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        loadingView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        loadingView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        loadingView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
}
