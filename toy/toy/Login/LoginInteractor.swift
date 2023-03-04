//
//  LoginInteractor.swift
//  Toy
//
//  Created by 박성준 on 2023/02/20.
//

import RIBs
import RxSwift

protocol LoginRouting: ViewableRouting {
    
}

protocol LoginPresentable: Presentable {
    var listener: LoginPresentableListener? { get set }
    
}

protocol LoginListener: AnyObject {
    
}

final class LoginInteractor: PresentableInteractor<LoginPresentable>, LoginInteractable, LoginPresentableListener {

    weak var router: LoginRouting?
    weak var listener: LoginListener?

    override init(presenter: LoginPresentable) {
        super.init(presenter: presenter)
        presenter.listener = self
    }

    override func didBecomeActive() {
        super.didBecomeActive()
        
    }

    override func willResignActive() {
        super.willResignActive()
        
    }
    
    func Login(ID: String?, PW: String?) {
        
    }
}
