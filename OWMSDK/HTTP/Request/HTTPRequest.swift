//
//  HTTPRequest.swift
//  OWMSDK
//
//  Created by Wajahat on 06/03/2019.
//  Copyright © 2019 Wajahat. All rights reserved.
//

import Foundation

class HTTPRequest {
    
    private(set) var httpMethod: HTTPMethod
    private(set) var queryURL: String
    private(set) var headers: [String: String]
//    private(set) var parameters: [DictionaryLiteral<String, AnyObject>]
//    private(set) var username: String?
//    private(set) var password: String?
    
    
    /// Initializes a simple http request
    ///
    /// - Author:
    ///   Wajahat Iqbal
    /// - Parameters:
    ///   - method: The HTTP method to use. Can be GET, HEAD, PUT, POST, DELETE and PATCH
    ///   - queryURL: The http url to create the HTTP Request. ExhttpMethod = method
    ///   - headers: The key-value map of all http headers to be sent
    ///   - parameters: The form data values in a key-value map
    ///
    /// - Returns:
    ///   Http request initialized with the given method, url and headers
    init(method: HTTPMethod, queryURL: String, headers: [String: String]) {
        httpMethod = method
        self.queryURL = queryURL
        self.headers = headers
    }
    
    /// Initializes a simple http request
    ///
    /// - Author:
    ///   Wajahat Iqbal
    /// - Parameters:
    ///   - method: The HTTP method to use. Can be GET, HEAD, PUT, POST, DELETE and PATCH
    ///   - queryURL: The http url to create the HTTP Request. ExhttpMethod = method
    ///   - headers: The key-value map of all http headers to be sent
    ///   - parameters: The form data values in a key-value map
    ///   - username: Username for basic authentication
    ///   - password: Password for basic authentication
    ///
    /// - Returns:
    ///   Http request initialized with the given method, url and headers
//    init(method: HTTPMethod, queryURL: String, headers: [String: String], parameters: [DictionaryLiteral<String, AnyObject>], username: String, password: String) {
//        httpMethod = method
//        self.queryURL = queryURL
//        self.headers = headers
//        self.parameters = parameters
//        self.username = username
//        self.password = password
//    }
}
