//
//  AppComponent.swift
//  Toy
//
//  Created by 박성준 on 2023/02/18.
//

import RIBs

class AppComponent: Component<EmptyDependency>, RootDependency {
    
    init() {
        super.init(dependency: EmptyComponent())
    }
}
