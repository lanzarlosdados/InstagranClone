//
//  InstagramToolbar.swift
//  InstagranClone
//
//  Created by fabian zarate on 17/10/2024.
//

import SwiftUI

@ToolbarContentBuilder
func InstagramToolbar(
    cameraAction: @escaping () -> Void,
    igtvAction: @escaping () -> Void,
    messengerAction: @escaping () -> Void
) -> some ToolbarContent {
    ToolbarItem(placement: .navigationBarLeading) {
        IconButton(imageName: "camera-Icon", action: cameraAction)
    }
    
    ToolbarItem(placement: .principal) {
        Image("instagram-logo")
            .renderingMode(.template)
            .foregroundColor(Color("primary"))
            .frame(width: 105)
            .scaledToFit()
    }
    
    ToolbarItem(placement: .navigationBarTrailing) {
        HStack {
            IconButton(imageName: "igtv", action: igtvAction)
            IconButton(imageName: "messanger", action: messengerAction)
        }
    }
}
