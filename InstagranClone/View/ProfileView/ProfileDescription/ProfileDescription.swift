//
//  ProfileDescription.swift
//  InstagranClone
//
//  Created by fabian zarate on 26/12/2024.
//

import SwiftUI

struct ProfileDescription: View {
    var body: some View {
        VStack {
            HStack {
                HStack {
                    
                }
            }
            VStack (alignment: .leading, spacing: 1) {
                Text("Fabian").font(.system(size: 13,weight: .semibold))
                Text("Digital goodies designer").font(.system(size: 13,weight: .regular))
                Text("La vida es bella").font(.system(size: 13,weight: .regular))
            }
        }
    }
}

#Preview {
    ProfileDescription()
}
