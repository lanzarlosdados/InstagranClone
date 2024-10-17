//
//  LikeSection.swift
//  InstagranClone
//
//  Created by fabian zarate on 17/10/2024.
//

import SwiftUI

struct LikeSection: View {
    var body: some View {
        HStack(spacing: 17) {
            IconButton(imageName: "like", action: {})
            IconButton(imageName: "comment", action: {})
            IconButton(imageName: "messanger", action: {})
            Spacer()
            IconButton(imageName: "save", action: {})
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 14)
    }
}
