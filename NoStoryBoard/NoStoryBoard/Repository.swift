//
//  Repository.swift
//  NoStoryBoard
//
//  Created by 박성준 on 2022/08/30.
//

import Foundation


// 서버로부터 온 모델 Entity 전달
class Repository {
    func fetch(onCompleted: @escaping (ResponseModel) -> Void) {
        let url = "https://www.urigolfclub.co.kr//score_api/visit_list.aspx?date=\("")"
        
        URLSession.shared.dataTask(with: URL(string: url)!) { data, _, _ in
            guard let data = data else { return }
            guard let model = try? JSONDecoder().decode(ResponseModel.self, from: data) else { return }
            onCompleted(model)
        }.resume()
    }
    
}
