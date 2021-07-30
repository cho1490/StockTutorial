//
//  StockDetailView.swift
//  StockTutorial
//
//  Created by 조상현 on 2021/07/30.
//

import UIKit

class StockDetailView: BaseView {
    
    let scrollView = UIScrollView()
    let topView = StockDetailTopView()
    let bottomView = StockDetailBottomView()
    let loadingView = LoadingView()
    
    override func configureUI() {
        
        addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(topView)
        topView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(bottomView)
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        topView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        topView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        topView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        bottomView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 16).isActive = true
        bottomView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        bottomView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        bottomView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -50).isActive = true
        
        addSubview(loadingView)
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        loadingView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        loadingView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        loadingView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        loadingView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
}
