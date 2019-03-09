//
//  HTTPContext.swift
//  OWMSDK
//
//  Created by Wajahat on 08/03/2019.
//  Copyright © 2019 Wajahat. All rights reserved.
//

import Foundation

class HTTPContext {
    private(set) var request: HTTPRequest
    private(set) var response: HTTPResponse
    
    init(request: HTTPRequest, response: HTTPResponse) {
        self.request = request
        self.response = response
    }
}
