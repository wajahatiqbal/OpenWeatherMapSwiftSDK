//
//  URLSessionClient.swift
//  OWMSDK
//
//  Created by Wajahat on 08/03/2019.
//  Copyright © 2019 Wajahat. All rights reserved.
//

import Foundation

class URLSessionClient: HTTPClient {
    
    
    func setTimeout(timeout: TimeInterval) {
        
    }
    
    func executeAsStringAsync(request: HTTPRequest) {
        
    }
    
    func executeAsBinaryAsync() {
        
    }
    
    func get(queryUrl: String, headers: [String : String]) -> HTTPRequest {
       return HTTPRequest(method: HTTPMethod.GET, queryURL: queryUrl, headers: headers)
    }
    
    
}
