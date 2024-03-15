//
//  Course.swift
//  ARDisplay
//
//  Created by Tuan Nguyen on 15/3/24.
//

import Foundation
struct Course: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let content: String
}
