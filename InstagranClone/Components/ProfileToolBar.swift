//
//  ProfileToolBar.swift
//  InstagranClone
//
//  Created by fabian zarate on 26/12/2024.
//

import SwiftUI

@ToolbarContentBuilder
func ProfileToolBar(
    menuAction: @escaping () -> Void,
    privateAction: @escaping () -> Void,
    accountsAction: @escaping () -> Void
) -> some ToolbarContent {
    
    ToolbarItem(placement: .principal) {
        HStack(spacing: 0) {
            IconButton(imageName: "private-icon", action: privateAction)
            Text("Fabian").font(.system(size: 13,weight: .semibold))
            IconButton(imageName: "accounts-list", action: accountsAction)
        }
    }
    
    ToolbarItem(placement: .navigationBarTrailing) {
            IconButton(imageName: "menu", action: menuAction)
    }
}
