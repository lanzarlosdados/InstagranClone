//
//  IconButton.swift
//  InstagranClone
//
//  Created by fabian zarate on 17/10/2024.
//

import SwiftUI

struct IconButton: View {
    let imageName: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(imageName)
                .renderingMode(.template)
                .foregroundStyle(Color("primary"))
        }
    }
}
