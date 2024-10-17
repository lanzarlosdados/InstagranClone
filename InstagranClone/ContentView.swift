//
//  ContentView.swift
//  InstagranClone
//
//  Created by fabian zarate on 17/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, mundo!")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
