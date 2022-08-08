//
//  Functions.swift
//  NoStoryBoard
//
//  Created by 박성준 on 2022/08/08.
//

import Foundation


func NullCheck(input : Any) -> String
{
    if (input != nil)
    {
        return String(describing: input)
    }
    
    return ""
}
