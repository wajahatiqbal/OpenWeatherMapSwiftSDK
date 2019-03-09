//
//  HTTPResponse.swift
//  OWMSDK
//
//  Created by Wajahat on 07/03/2019.
//  Copyright © 2019 Wajahat. All rights reserved.
//

import Foundation

class HTTPResponse {
    
    private(set) var statusCode: Int
    private(set) var headers: [String: String]
    private(set) var rawBody: InputStream
    
    
    init(statusCode: Int, headers: [String: String], rawBody: InputStream) {
        self.statusCode = statusCode
        self.headers = headers
        self.rawBody = rawBody
    }
}
