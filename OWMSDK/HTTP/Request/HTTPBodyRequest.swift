//
//  HTTPBodyRequest.swift
//  OWMSDK
//
//  Created by Wajahat on 06/03/2019.
//  Copyright © 2019 Wajahat. All rights reserved.
//

import Foundation

class HTTPBodyRequest: HTTPRequest {
    
    
    //Deal with the body.
    
    private(set) var body: String
    
    init(method: HTTPMethod, queryURL: String, headers: [String : String], body: String) {
        self.body = body
        super.init(method: method, queryURL: queryURL, headers: headers)
    }
    
//    init(method: HTTPMethod, queryURL: String, headers: [String : String], parameters: [DictionaryLiteral<String, AnyObject>], username: String, password: String, body: String) {
//        self.body = body
//        super.init(method: method, queryURL: queryURL, headers: headers, parameters: parameters, username: username, password: password)
//    }
    
}
