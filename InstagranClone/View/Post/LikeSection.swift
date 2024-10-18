//
//  LikeSection.swift
//  InstagranClone
//
//  Created by fabian zarate on 18/10/2024.
//

import SwiftUI

struct LikeSection: View {
    var body: some View {
        HStack {
            Image(UserModel.getUsers().randomElement()!.profilePicture)
                .resizable()
                .frame(width: 17, height: 17)
                .clipShape(Circle())
                .scaledToFit()
            Text("Like by ")
            + Text(UserModel.getUsers().randomElement()!.username).bold()
            + Text(" and ")
            + Text("\(UserModel.getUsers().count) others").bold()
        }
        .font(.system(size: 13))
        .frame(maxWidth: .infinity,alignment: .leading)
        .padding(.horizontal,14)
    }
}

