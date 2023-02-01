//
//  testBuilder.swift
//  toy
//
//  Created by 박성준 on 2023/02/01.
//

import RIBs

protocol testDependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
}

final class testComponent: Component<testDependency> {

    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: - Builder

protocol testBuildable: Buildable {
    func build(withListener listener: testListener) -> testRouting
}

final class testBuilder: Builder<testDependency>, testBuildable {

    override init(dependency: testDependency) {
        super.init(dependency: dependency)
    }

    func build(withListener listener: testListener) -> testRouting {
        let component = testComponent(dependency: dependency)
        let viewController = testViewController()
        let interactor = testInteractor(presenter: viewController)
        interactor.listener = listener
        return testRouter(interactor: interactor, viewController: viewController)
    }
}
