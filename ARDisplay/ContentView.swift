//
//  ContentView.swift
//  ARDisplay
//
//  Created by Tuan Nguyen on 14/3/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Window Tab")
                .font(.largeTitle)
                .foregroundColor(.orange)
                .tabItem {
                    Image(systemName: "window.awning.closed")
                    Text("Window")
                }
            Text("Volume Tab")
                .font(.largeTitle)
                .foregroundColor(.orange)
                .tabItem {
                    Image(systemName: "cube")
                    Text("Volume")
                }
            Text("Immersive Tab")
                .font(.largeTitle)
                .foregroundColor(.orange)
                .tabItem {
                    Image(systemName: "globe")
                    Text("Immersive")
                }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
