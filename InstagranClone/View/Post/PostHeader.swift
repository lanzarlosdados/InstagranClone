//
//  PostHeader.swift
//  InstagranClone
//
//  Created by fabian zarate on 17/10/2024.
//

import SwiftUI

struct PostHeader: View {
    let userPost: UserModel

    var body: some View {
        HStack{
            HStack{
                Image(userPost.profilePicture)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 32, height: 32)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    HStack {
                        Text(userPost.username)
                            .font(.system(size: 12, weight: .semibold))
                            .lineLimit(1)
                        Image("official-icon")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 10, height: 10)
                    }
                    Text(userPost.city)
                        .font(.system(size: 13,weight: .regular))
                        .lineLimit(1)
                }
                    
            }
            Spacer()
            IconButton(imageName: "more-icon", action: {print("Cámara presionada")})

        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 14)

    }
}
