//
//  PostView.swift
//  InstagranClone
//
//  Created by fabian zarate on 17/10/2024.
//

import SwiftUI

struct PostView: View {
    let post: TimelineModel
    var body: some View {
        VStack {
            PostHeader(userPost: post.user)
            Image(post.photo)
                .resizable()
                .scaledToFill()
                .frame(width: .infinity, height: 375)
            LikeSection()
        }
    }
}

#Preview {
    PostView(post: TimelineModel.getPosts()[0])
}
