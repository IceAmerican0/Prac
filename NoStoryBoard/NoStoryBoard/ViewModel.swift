//
//  ViewModel.swift
//  NoStoryBoard
//
//  Created by 박성준 on 2022/08/30.
//

import Foundation

class ViewModel {
    var onUpdated: () -> Void = {}
    
    var dateTimeString: String = "Loading.."
    {
        didSet {
            onUpdated()
        }
    }
    
    let service = Service()
    
    
    func reload() {
        service.fetch{ [weak self] model in
            guard let self = self else { return }
            
        }
    }
    
    
}
