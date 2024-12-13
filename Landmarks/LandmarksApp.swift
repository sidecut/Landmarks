//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by James Raden on 12/12/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
