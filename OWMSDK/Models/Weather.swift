//
//  Weather.swift
//  OWMSDK
//
//  Created by Wajahat on 13/03/2019.
//  Copyright © 2019 Wajahat. All rights reserved.
//

import Foundation

public class Weather: Codable {
    public let id: Int
    public let description: String
    public let icon: String
    public let main: String
}
