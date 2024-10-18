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
                .frame(height: UIScreen.main.bounds.width)
                .frame(maxWidth: .infinity)
                .aspectRatio(contentMode: .fill)
            ActionsIcons()
            LikeSection()
            
        }
    }
}

#Preview {
    PostView(post: TimelineModel.getPosts()[0])
}
