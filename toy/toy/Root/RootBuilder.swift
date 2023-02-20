//
//  RootBuilder.swift
//  Toy
//
//  Created by 박성준 on 2023/02/18.
//

import RIBs

protocol RootDependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
}

final class RootComponent: Component<RootDependency> {
    
}

protocol RootDependencyHome: Dependency {
    
}

extension RootComponent: HomeDependency {
    
}

// MARK: - Builder

protocol RootBuildable: Buildable {
    func build() -> LaunchRouting
}

final class RootBuilder: Builder<RootDependency>, RootBuildable {

    override init(dependency: RootDependency) {
        super.init(dependency: dependency)
    }

    func build() -> LaunchRouting {
        let component = RootComponent(dependency: dependency)
        let viewController = RootViewController()
        let interactor = RootInteractor(presenter: viewController)
        
        let homeBuilder = HomeBuilder(dependency: component)
        return RootRouter(interactor: interactor, viewController: viewController, homeBuilder: homeBuilder)
    }
}
