//
//  StockDetailTopView.swift
//  StockTutorial
//
//  Created by 조상현 on 2021/07/30.
//

import UIKit

class StockDetailTopView: BaseView {
    
    let titleLabel = TitleLabel()
    let subTitleLabel = NormalGrayLabel()
    let currentValueTextLabel = SmallLabel()
    let currentValueValueLabel = TitleLabel()
    let investmentLabel = SmallLabel()
    let investmentValueLabel = SmallBoldLabel()
    let gainLabel = SmallLabel()
    let gainValueLabel = SmallBoldLabel()
    let annualReturnLabel = SmallLabel()
    let annualReturnValueLabel = SmallBoldLabel()
    
    override func configureUI() {
        titleLabel.text = "SPY"
        subTitleLabel.text = "SPY"
        currentValueTextLabel.text = "SPY"
        currentValueValueLabel.text = "SPY"
        investmentLabel.text = "SPY"
        investmentValueLabel.text = "SPY"
        gainLabel.text = "SPY"
        gainValueLabel.text = "SPY"
        annualReturnLabel.text = "SPY"
        annualReturnValueLabel.text = "SPY"
        
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(subTitleLabel)
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(currentValueTextLabel)
        currentValueTextLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(currentValueValueLabel)
        currentValueValueLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(investmentLabel)
        investmentLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(investmentValueLabel)
        investmentValueLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(gainLabel)
        gainLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(gainValueLabel)
        gainValueLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(annualReturnLabel)
        annualReturnLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(annualReturnValueLabel)
        annualReturnValueLabel.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        
        subTitleLabel.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor).isActive = true
        subTitleLabel.leftAnchor.constraint(equalTo: titleLabel.rightAnchor, constant: 10).isActive = true
        subTitleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        
        currentValueTextLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive = true
        currentValueTextLabel.leftAnchor.constraint(equalTo: titleLabel.leftAnchor).isActive = true
        
        currentValueValueLabel.topAnchor.constraint(equalTo: currentValueTextLabel.bottomAnchor, constant: 10).isActive = true
        currentValueValueLabel.leftAnchor.constraint(equalTo: currentValueTextLabel.leftAnchor).isActive = true
        
        investmentLabel.topAnchor.constraint(equalTo: currentValueValueLabel.bottomAnchor, constant: 10).isActive = true
        investmentLabel.leftAnchor.constraint(equalTo: titleLabel.leftAnchor).isActive = true
        
        investmentValueLabel.centerYAnchor.constraint(equalTo: investmentLabel.centerYAnchor).isActive = true
        investmentValueLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        
        gainLabel.topAnchor.constraint(equalTo: investmentLabel.bottomAnchor, constant: 10).isActive = true
        gainLabel.leftAnchor.constraint(equalTo: titleLabel.leftAnchor).isActive = true
        
        gainValueLabel.centerYAnchor.constraint(equalTo: gainLabel.centerYAnchor).isActive = true
        gainValueLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        
        annualReturnLabel.topAnchor.constraint(equalTo: gainLabel.bottomAnchor, constant: 10).isActive = true
        annualReturnLabel.leftAnchor.constraint(equalTo: titleLabel.leftAnchor).isActive = true
    
        annualReturnValueLabel.centerYAnchor.constraint(equalTo: annualReturnLabel.centerYAnchor).isActive = true
        annualReturnValueLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        annualReturnValueLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).isActive = true
    }
}
