//
//  ViewModel.swift
//  InstagranClone
//
//  Created by fabian zarate on 17/10/2024.
//

import Foundation
import SwiftUI

class ViewModel : ObservableObject{
    @Published var timelineList = [TimelineModel]()
    @Published var storyList = [StoryModel]()
    
    init(){
        self.timelineList = TimelineModel.getPosts()
        self.storyList = StoryModel.getStories()
    }
    
}
