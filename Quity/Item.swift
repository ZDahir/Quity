//
//  Item.swift
//  Quity
//
//  Created by Zaid Dahir on 2024-08-27.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
