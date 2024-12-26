//
//  ProfileView.swift
//  InstagranClone
//
//  Created by fabian zarate on 26/12/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                ScrollView {
                    VStack {
                        ProfileDescription()
                    }
                    .toolbar {
                        ProfileToolBar (
                            menuAction: { print("menuAction") },
                            privateAction: { print("privateAction") },
                            accountsAction: { print("accountsAction") }
                        )
                    }
                }.navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    ProfileView()
}
