//
//  UrlRequestJson.swift
//  NoStoryBoard
//
//  Created by 박성준 on 2022/08/03.
//

import Foundation

class UrlRequestJson
{
    func GetUrlSessionData(onCompleted: @escaping (Date) -> Void)
    {
        let urlComponent = URLComponents(string:"https://www.urigolfclub.co.kr//score_api/visit_list.aspx?date=\(selectedDate)")
        
        Swift.print("\n==============\nrequestUrl : \(String(describing: urlComponent))\n===================")
        
        var requestURL = URLRequest(url: (urlComponent?.url)!)
        requestURL.httpMethod = "GET"
        requestURL.setValue("application.x-www-form-urlencoded; charset=utf-8", forHTTPHeaderField: "Content-Type")
        
        let task = URLSession.shared.dataTask(with: requestURL) { (data, response, error) in
            guard error == nil else {
                Swift.print("\n================\nNETWORK FAIL : \(error?.localizedDescription ?? "")\n==================")
                return
            }
            
            let successRange = 200..<300
            guard let statusCode = (response as? HTTPURLResponse)?.statusCode, successRange.contains(statusCode) else {
                
                
                return
            }
            
            let resultData = String(data: data!, encoding: .utf8) ?? ""
            
            Swift.print("\n==============\nNETWORK SUCCESS : \(resultData)\n===================")
            
        }
        
        task.resume()
    }
        
}



