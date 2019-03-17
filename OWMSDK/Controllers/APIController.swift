//
//  APIController.swift
//  OWMSDK
//
//  Created by Wajahat on 11/03/2019.
//  Copyright © 2019 Wajahat. All rights reserved.
//

import Foundation
import Alamofire

public class APIController {
    
    public init() {
        
    }
    
    /// End Point method to get weather by city name
    ///
    /// - Parameter q: City Name
    public func getWeatherByCityNameAsync(q: String) {
        
        let baseUri = Configuration.baseUri
        var queryBuilder = baseUri
        queryBuilder += "/weather?q=\(q)&appid=\(Configuration.appId)"
        
        let session = URLSession.shared
        let url = URL(string: queryBuilder)
        
        print(queryBuilder)
        
        
        
        if let theUrl = url {
            let task = session.dataTask(with: theUrl) { data, response, error in
                
                if let data = data {
                    
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    do {
                        let decoded = try decoder.decode(Response.self, from: data)
                        print(decoded.main.tempMax)
                        
                    } catch {
                        print(error.localizedDescription)
                    }
                    
                } else if let error = error {
                    print(error.localizedDescription)
                }
            }
            task.resume()
        }
        
        
        
    }
    
    public func getWeatherByCityIDAsync(id: Int) {
        let baseUri = Configuration.baseUri
        var queryBuilder = baseUri
        queryBuilder += "/weather?id=\(id)&appid=\(Configuration.appId)"

        let url = URL(string: queryBuilder)
        
        print(queryBuilder)
        
        if let url = url {
            Alamofire.request(url).responseData{ response in
                let decoder = JSONDecoder()
                if let data = response.data {
                    do {
                        decoder.keyDecodingStrategy = .convertFromSnakeCase
                        let decoded = try decoder.decode(Response.self, from: data)
                        print(decoded.base)
                    } catch {
                        print(error)
                    }
                }
                
            }
        }
    }
    
    
}
