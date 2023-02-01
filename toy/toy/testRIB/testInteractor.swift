//
//  testInteractor.swift
//  toy
//
//  Created by 박성준 on 2023/02/01.
//

import RIBs
import RxSwift

protocol testRouting: ViewableRouting {
    // TODO: Declare methods the interactor can invoke to manage sub-tree via the router.
}

protocol testPresentable: Presentable {
    var listener: testPresentableListener? { get set }
    // TODO: Declare methods the interactor can invoke the presenter to present data.
}

protocol testListener: AnyObject {
    // TODO: Declare methods the interactor can invoke to communicate with other RIBs.
}

final class testInteractor: PresentableInteractor<testPresentable>, testInteractable, testPresentableListener {

    weak var router: testRouting?
    weak var listener: testListener?

    // TODO: Add additional dependencies to constructor. Do not perform any logic
    // in constructor.
    override init(presenter: testPresentable) {
        super.init(presenter: presenter)
        presenter.listener = self
    }

    override func didBecomeActive() {
        super.didBecomeActive()
        // TODO: Implement business logic here.
    }

    override func willResignActive() {
        super.willResignActive()
        // TODO: Pause any business logic.
    }
}
