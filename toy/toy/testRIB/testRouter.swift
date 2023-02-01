//
//  testRouter.swift
//  toy
//
//  Created by 박성준 on 2023/02/01.
//

import RIBs

protocol testInteractable: Interactable {
    var router: testRouting? { get set }
    var listener: testListener? { get set }
}

protocol testViewControllable: ViewControllable {
    // TODO: Declare methods the router invokes to manipulate the view hierarchy.
}

final class testRouter: ViewableRouter<testInteractable, testViewControllable>, testRouting {

    // TODO: Constructor inject child builder protocols to allow building children.
    override init(interactor: testInteractable, viewController: testViewControllable) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
}
