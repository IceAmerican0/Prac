//
//  HomeInteractor.swift
//  Toy
//
//  Created by 박성준 on 2023/02/19.
//

import RIBs
import RxSwift

protocol HomeRouting: ViewableRouting {
    
}

protocol HomePresentable: Presentable {
    var listener: HomePresentableListener? { get set }
    
}

protocol HomeListener: AnyObject {
    
}

final class HomeInteractor: PresentableInteractor<HomePresentable>, HomeInteractable, HomePresentableListener {

    weak var router: HomeRouting?
    weak var listener: HomeListener?

    override init(presenter: HomePresentable) {
        super.init(presenter: presenter)
        presenter.listener = self
    }

    override func didBecomeActive() {
        super.didBecomeActive()
        
    }

    override func willResignActive() {
        super.willResignActive()
        
    }
    
    // MARK: - MainPresentableListener
    
    func moveToLoginView() {
        
    }
}
