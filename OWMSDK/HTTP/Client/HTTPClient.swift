//
//  HTTPClient.swift
//  OWMSDK
//
//  Created by Wajahat on 06/03/2019.
//  Copyright © 2019 Wajahat. All rights reserved.
//

import Foundation

protocol HTTPClient {
    func setTimeout(timeout: TimeInterval)
    func executeAsStringAsync(url: URL?)
    func get(queryUrl: String, headers: [String: String]) -> HTTPRequest
    
}
