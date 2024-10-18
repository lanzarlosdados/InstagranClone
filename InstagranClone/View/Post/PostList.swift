//
//  PostList.swift
//  InstagranClone
//
//  Created by fabian zarate on 18/10/2024.
//

import SwiftUI

struct PostList: View {
    let timelineList: [TimelineModel]
    
    var body: some View {
        ForEach(timelineList) { post in
            PostView(post: post)
        }
    }
}

