//
//  Jump.swift
//  Tracer
//
//  Created by James Patrick Gibson on 6/22/20.
//

import SwiftUI

struct Jump: Identifiable {
    var id = UUID()
    var jumpNumber: String
    var place: String
}

#if DEBUG
let testData = [
    Jump(jumpNumber: "5", place: "The Ranch"),
    Jump(jumpNumber: "4", place: "The Ranch"),
    Jump(jumpNumber: "3", place: "The Ranch"),
    Jump(jumpNumber: "2", place: "The Ranch"),
    Jump(jumpNumber: "1", place: "The Ranch")
]
#endif
