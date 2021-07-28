//
//  BaseViewController.swift
//  StockTutorial
//
//  Created by 조상현 on 2021/07/28.
//

import UIKit
import Combine
import RxSwift

class BaseViewController: UIViewController {
    
    let disposeBag = DisposeBag()
    var subscriber: Set<AnyCancellable> = .init()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        configureUI()
    }
    
    func configureUI() {
        view.backgroundColor = .systemBackground
    }
    
}
