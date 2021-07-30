//
//  EmptyView.swift
//  StockTutorial
//
//  Created by 조상현 on 2021/07/30.
//

import UIKit

class EmptyView: UIView {
    
    let descriptionLabel = NormalLabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        descriptionLabel.text = "This is no any Content"
        addSubview(descriptionLabel)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        descriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true 
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
