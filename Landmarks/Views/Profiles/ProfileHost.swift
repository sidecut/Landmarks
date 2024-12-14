//
//  Profiles.swift
//  Landmarks
//
//  Created by James Raden on 12/13/24.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) private var editMode
    @Environment(ModelData.self) private var modelData
    @State private var editBuffer = Profile.default

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                if editMode?.wrappedValue == .active {
                    Button("Cancel", role: .cancel) {
                        editBuffer = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            }

            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $editBuffer)
                    .onAppear {
                        editBuffer = modelData.profile
                    }
                    .onDisappear {
                        modelData.profile = editBuffer
                    }
            }
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}
