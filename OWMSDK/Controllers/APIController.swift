//
//  APIController.swift
//  OWMSDK
//
//  Created by Wajahat on 11/03/2019.
//  Copyright © 2019 Wajahat. All rights reserved.
//

import Foundation

public class APIController {
    
    public init() {    }
    
    public func getWeatherByCityNameAsyncWithQ(q: String) {
        
        let baseUri = Configuration.baseUri
        var queryBuilder = baseUri
        queryBuilder += "/weather?q=\(q)&appid=\(Configuration.appId)"
        
        let session = URLSession.shared
        let url = URL(string: queryBuilder)
        
        print(queryBuilder)
        
        if let theUrl = url {
            let task = session.dataTask(with: theUrl) { data, response, error in
                
                if let data = data {
                    let jsonSerialized = try? JSONSerialization.jsonObject(with: data, options: [])
                    print(jsonSerialized as Any)
                    
                } else if let error = error {
                    print(error.localizedDescription)
                }
            }
            task.resume()
        }
        
    }
    
    
    
}
