//
//  LandmarkCommands.swift
//  Landmarks
//
//  Created by James Raden on 12/15/24.
//

import SwiftUI

struct LandmarkCommands: Commands {
    var body: some Commands {
        SidebarCommands()
    }
}

private struct SelectedLandmarkKey: FocusedValueKey {
    typealias Value = Binding<Landmark>
}

extension FocusedValues {
    var selectedLandmark: Binding<Landmark>? {
        get { self[SelectedLandmarkKey.self] }
        set { self[SelectedLandmarkKey.self] = newValue }
    }
}
