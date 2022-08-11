//
//  Date+Extension.swift
//  NoStoryBoard
//
//  Created by 박성준 on 2022/08/08.
//

import Foundation

extension Date
{
    func setTodayDate(selected:Date) -> String
    {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyyMMdd"
        let date = formatter.string(from: selected)
        
        return date
    }
}
