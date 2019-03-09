//
//  HTTPStringResponse.swift
//  OWMSDK
//
//  Created by Wajahat on 07/03/2019.
//  Copyright © 2019 Wajahat. All rights reserved.
//

import Foundation

class HTTPStringResponse: HTTPResponse {
    
    private(set) var body: String

    init (code: Int, headers: [String: String], rawBody: InputStream, body: String){
        self.body = body
        super.init(statusCode: code, headers: headers, rawBody: rawBody)
    }
}
