//
//  LandmarkList.swift
//  Landmarks
//
//  Created by James Raden on 12/13/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
