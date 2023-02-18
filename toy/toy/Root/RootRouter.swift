//
//  RootRouter.swift
//  Toy
//
//  Created by 박성준 on 2023/02/18.
//

import RIBs

protocol RootInteractable: Interactable {
    var router: RootRouting? { get set }
    var listener: RootListener? { get set }
}

protocol RootViewControllable: ViewControllable {
    func present(viewController: ViewControllable)
}

final class RootRouter: ViewableRouter<RootInteractable, RootViewControllable>, RootRouting {
    
    init(interactor: RootInteractable,
         viewController: RootViewControllable,
         MainBuilder: MainBuildable) {
        self.MainBuilder = MainBuilder
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }

    
    override func didLoad() {
        super.didLoad()
        
        let main = MainBuilder.build(withListener: interactor as! MainListener)
        self.Main = main
        attachChild(main)
        viewController.present(viewController: main.viewControllable)
    }
    
    private let MainBuilder: MainBuildable
    private var Main: ViewableRouting?
}
