//
//  DateFormatter.swift
//  NoStoryBoard
//
//  Created by 박성준 on 2022/08/08.
//

import Foundation

extension String
{
    func setTodayDate() -> String
    {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyyMMdd"
        let todayDate = formatter.string(from: Date())
        
        return todayDate
    }
}
