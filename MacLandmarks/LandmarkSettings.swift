//
//  LandmarkSettings.swift
//  MacLandmarks
//
//  Created by James Raden on 12/15/24.
//

import SwiftUI

struct LandmarkSettings: View {
    @AppStorage("MapView.zoom")
    private var zoom: MapView.Zoom = .medium

    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    LandmarkSettings()
}
