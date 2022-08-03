//
//  ResponseJsonData.swift
//  NoStoryBoard
//
//  Created by 박성준 on 2022/08/03.
//

import Foundation

struct responseJsonData : Codable {
    
    var rounding_date : String? = ""
    var teeoff_time : String? = ""
    var out_course_name : String? = ""
    var teeoff_no : String? = ""
    var team_name : String? = ""
    
    var players : Dictionary? = ["":""]
    var name : String? = ""
    var memno : String? = ""
    var gmemno : String? = ""
    var gender : String? = ""
    var member : String? = ""
    
}
