//
//  StorieView.swift
//  InstagranClone
//
//  Created by fabian zarate on 17/10/2024.
//

import SwiftUI

struct StoryView: View {
    let story : StoryModel
    
    var randomColor : [Color] = [
        Color("gradiant-story-1"),
        Color("gradiant-story-2"),
        Color("gradiant-story-3"),
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            ZStack (alignment: .bottom) {
                Image(story.user.profilePicture)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                    .overlay {
                        Circle()
                            .stroke(
                                LinearGradient(
                                    colors: randomColor.shuffled(), startPoint: .bottom, endPoint: .trailing), lineWidth: 2
                            )
                            .padding(-3)
                }
                
                if story.isLive {
                    LiveTag()
                }
            }
            
            Text(story.user.username)
                .frame(width: 81,alignment: .center)
                .lineLimit(1)
                .font(.system(size: 12,weight: .regular))
                
        }
    }
}

#Preview {
    StoryView(story: StoryModel.getStories()[2])
        .scaleEffect(CGSize(width: 3.0, height: 3.0))
}
