//
//  Response.swift
//  OWMSDK
//
//  Created by Wajahat on 13/03/2019.
//  Copyright © 2019 Wajahat. All rights reserved.
//

import Foundation

public class Response: Codable {
    public let id: Double
    public let name: String
    public let base: String
    public let weather: [Weather]
    public let coord: Coord
    public let main: Main
    public let visibility: Int
    public let wind: Wind
    public let dt: Double
    public let clouds: Clouds
    public let sys: Sys
}
