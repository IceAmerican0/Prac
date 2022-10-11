//
//  Service.swift
//  NoStoryBoard
//
//  Created by 박성준 on 2022/08/30.
//

import Foundation

// Repository에서 받은 모델(데이터)을 화면에 보여줄 모델(데이터)로 변환
class Service {
    let repository = Repository()
    
    var responseModel = Model(responseData: "")
    
    func fetch(onCompleted: @escaping (Model) -> Void) {
        repository.fetch { [weak self] entity in
            
            guard let selected = entity.rounding_date else { return }
            
            let model = Model(responseData: selected)
            self?.responseModel = model
            
            onCompleted(model)
        }
    }
}
