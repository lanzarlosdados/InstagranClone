//
//  ContentView.swift
//  InstagranClone
//
//  Created by fabian zarate on 17/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                
            }
            .toolbar {
                InstagramToolbar(
                    cameraAction: { print("Cámara presionada") },
                    igtvAction: { print("IGTV presionado") },
                    messengerAction: { print("Messenger presionado") }
                )
            }
        }
    }
}

#Preview {
    ContentView()
}
