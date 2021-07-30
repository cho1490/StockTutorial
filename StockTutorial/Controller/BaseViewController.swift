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
    
    private var scrollView: UIScrollView?
    
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
    
    func removeListeners() {
        NotificationCenter.default.removeObserver(self)
    }
    
    func enableScrollWhenKeyboardAppeared(scrollView: UIScrollView) {
        self.scrollView = scrollView
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc private func keyboardWillShow(notification: NSNotification) {
        guard let scrollView = scrollView else { return }
        guard let userInfo = notification.userInfo else { return }
        var keyboardFrame: CGRect = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)
        
        var contentInset: UIEdgeInsets  = scrollView.contentInset
        // 키보드가 가린 만큼 스크롤 뷰(테이블 뷰) 하단에 여백을 넣어줌
        contentInset.bottom = keyboardFrame.size.height
        scrollView.contentInset = contentInset
    }
    
    @objc private func keyboardWillHide(notification: NSNotification) {
        guard let scrollView = scrollView else { return }
        
        let contentInset: UIEdgeInsets = .zero
        scrollView.contentInset = contentInset
    }
    
}
