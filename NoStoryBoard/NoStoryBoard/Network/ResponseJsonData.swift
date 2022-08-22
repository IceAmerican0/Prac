//
//  ResponseJsonData.swift
//  NoStoryBoard
//
//  Created by 박성준 on 2022/08/03.
//

import Foundation

struct responseJsonData : Codable {
    
    let rounding_date : String
    let teeoff_time : String
    let out_course_name : String
    let teeoff_no : String
    let team_name : String
    
    let players : [Players]
    
    enum CodingKyes: String, CodingKey {
        case rounding_date
        case teeoff_time
        case out_course_name
        case teeoff_no
        case team_name
        case players
    }
    
}

struct Players : Codable {
    let name : String
    let memno : String
    let gmemno : String
    let gender : String
    let member : String
    
    enum CodingKes: String, CodingKey {
        case name
        case memno
        case gmemno
        case gender
        case member
    }
}
