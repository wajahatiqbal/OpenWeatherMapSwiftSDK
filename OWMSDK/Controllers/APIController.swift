//
//  APIHelper.swift
//  OWMSDK
//
//  Created by Wajahat on 11/03/2019.
//  Copyright © 2019 Wajahat. All rights reserved.
//

import Foundation

open class APIController {
    
    func getWeatherByCityNameAsyncWithQ(q: String) {
        
        let baseUri = Configuration.configurationBaseUri
        var queryBuilder = baseUri
        queryBuilder += "/weather"
        
        
        let session = URLSession.shared
        let url = URL(string: queryBuilder)
        
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
