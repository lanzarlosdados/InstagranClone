//
//  StoryList.swift
//  InstagranClone
//
//  Created by fabian zarate on 17/10/2024.
//

import SwiftUI

struct StoryList: View {
    let storyList : [StoryModel]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(storyList) { story in
                    StoryView(story: story )
                }
            }
            .padding(.leading, 10)
            .padding(.top, 8)
        }
        .padding(.top, 5)
    }
}
