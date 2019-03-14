//
//  URLSessionClient.swift
//  OWMSDK
//
//  Created by Wajahat on 08/03/2019.
//  Copyright © 2019 Wajahat. All rights reserved.
//

import Foundation

class URLSessionClient: HTTPClient {
    
    func executeAsStringAsync(url: URL?) {
//        let session = URLSession.shared
//        if let url = url {
//            let task = session.dataTask(with: url) { data, response, error in
//                if let data = data {
//                   
//                } else if let error = error {
//                    print(error.localizedDescription)
//                }
//            }
//        }
    }
    
    func setTimeout(timeout: TimeInterval) {
        
    }
    
    func executeAsBinaryAsync() {
        
    }
    
    func get(queryUrl: String, headers: [String : String]) -> HTTPRequest {
       return HTTPRequest(method: HTTPMethod.GET, queryURL: queryUrl, headers: headers)
    }
    
    
}
