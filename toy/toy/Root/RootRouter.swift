//
//  RootRouter.swift
//  Toy
//
//  Created by 박성준 on 2023/02/18.
//

import RIBs

protocol RootInteractable: Interactable, HomeListener {
    var router: RootRouting? { get set }
    var listener: RootListener? { get set }
}

protocol RootViewControllable: ViewControllable {
    func present(viewController: ViewControllable)
}

final class RootRouter: LaunchRouter<RootInteractable, RootViewControllable>, RootRouting {
    
    init(interactor: RootInteractable,
         viewController: RootViewControllable,
         homeBuilder: HomeBuildable) {
        self.homeBuilder = homeBuilder
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
    
    override func didLoad() {
        super.didLoad()
        let home = self.homeBuilder.build(withListener: self.interactor)
        self.attachChild(home)
        self.viewController.present(viewController: home.viewControllable)
    }
    
    private let homeBuilder: HomeBuildable
    private var home: ViewableRouting?
    
}
