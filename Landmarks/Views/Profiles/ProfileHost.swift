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
    @State private var draftProfile = Profile.default

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Spacer()
                EditButton()
            }

            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                Text("Profile editor")
            }
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}
