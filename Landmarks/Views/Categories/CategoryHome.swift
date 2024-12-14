//
//  CategoryHome.swift
//  Landmarks
//
//  Created by James Raden on 12/13/24.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {

        NavigationSplitView {
            Text("Hello, world!")
                .navigationTitle("Featured")
        } detail: {
            Text("Select a landmark")
        }
    }
}

#Preview {
    CategoryHome()
}
