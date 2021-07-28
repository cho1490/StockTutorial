//
//  StockListController.swift
//  StockTutorial
//
//  Created by 조상현 on 2021/07/28.
//

import UIKit
import Pure
import RxSwift
import RxCocoa

class StockListController: BaseViewController, FactoryModule {
    
    struct Dependency {
        let viewModel: StockListViewModel
    }
    
    let selfView = StockListView()
    let viewModel: StockListViewModel
    
    required init(dependency: Dependency, payload: ()) {
        viewModel = dependency.viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()

    }
    
    override func configureUI() {
        view.addSubview(selfView)
        selfView.translatesAutoresizingMaskIntoConstraints = false
        selfView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        selfView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        selfView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        selfView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        selfView.tableView.delegate = self
        selfView.tableView.dataSource = self
        
        navigationItem.searchController = selfView.searchViewController
    }
    
    func bind() {
        
        selfView.searchViewController.searchBar.rx.text.debounce(.milliseconds(300), scheduler: MainScheduler.instance).subscribe(onNext: { [unowned self] text in
            guard let text = text, !text.isEmpty else { return }
            self.viewModel.searchQueryChanged(query: text)
        }).disposed(by: disposeBag)
        
        viewModel.$errorMessage.sink { errorMessage in
            guard let message = errorMessage, !message.isEmpty else { return }
            print("message: \(message)")
        }.store(in: &subscriber)
        
        viewModel.$stocks.sink { [unowned self] stocks in
            self.selfView.tableView.reloadData()
        }.store(in: &subscriber)
        
        viewModel.$loading.sink { [unowned self] loading in
            self.selfView.loadingView.isHidden = !loading
        }.store(in: &subscriber)
        
//        RxSwift
//        viewModel.loading.subscribe(onNext: { loading in
//            print("loading: \(loading)")
//        }).disposed(by: disposeBag)
//
//        viewModel.errorMessage.subscribe(onNext: { error in
//            guard let error = error else { return }
//            print("error: \(error)")
//        }).disposed(by: disposeBag)
//
//        viewModel.stocks.subscribe(onNext: { stocks in
//            print("stocks: \(stocks)")
//        }).disposed(by: disposeBag)
    }
    
}
