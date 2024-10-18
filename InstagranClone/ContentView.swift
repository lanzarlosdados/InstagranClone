//
//  ContentView.swift
//  InstagranClone
//
//  Created by fabian zarate on 17/10/2024.
//

import SwiftUI

struct ContentView: View {
    private var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                LineView()
                ScrollView {
                    VStack {
                        StoryList(storyList: viewModel.storyList)
                        LineView()
                        PostList(timelineList: viewModel.timelineList)                
                    }
                    .toolbar {
                        InstagramToolbar(
                            cameraAction: { print("Cámara presionada") },
                            igtvAction: { print("IGTV presionado") },
                            messengerAction: { print("Messenger presionado") }
                        )
                    }
                }.navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    ContentView()
}
