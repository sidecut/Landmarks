//
//  CategoryRow.swift
//  Landmarks
//
//  Created by James Raden on 12/13/24.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]

    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 4) {
                    ForEach(items) { landmark in
                        CategoryItem(landmark: landmark)
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

#Preview {
    var landmarks = ModelData().landmarks
    CategoryRow(
        categoryName: landmarks[0].category.rawValue,
        items: Array(landmarks.prefix(4)))
}
