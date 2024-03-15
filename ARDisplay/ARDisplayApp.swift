//
//  ARDisplayApp.swift
//  ARDisplay
//
//  Created by Tuan Nguyen on 14/3/24.
//

import SwiftUI

@main
struct ARDisplayApp: App {
    @State private var currentStyle: ImmersionStyle = .full

    var body: some Scene {
        WindowGroup {
            ContentListView()
        }.windowStyle(.plain)
        
        ImmersiveSpace(id: "ImmersiveScene") {
            ImmersiveView()
        }.immersionStyle(selection: $currentStyle, in: .full)
    }
}
