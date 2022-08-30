//
//  Service.swift
//  NoStoryBoard
//
//  Created by 박성준 on 2022/08/30.
//

import Foundation

class Service {
    let repository = Repository()
    
    var responseModel = Model(responseData: "")
    
    func fetch(onCompleted: @escaping (Model) -> Void) {
        repository.fetch { [weak self] entity in
            
        }
    }
}
