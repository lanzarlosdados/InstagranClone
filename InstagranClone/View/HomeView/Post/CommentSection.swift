//
//  SwiftUIView.swift
//  InstagranClone
//
//  Created by fabian zarate on 18/10/2024.
//

import SwiftUI

struct CommentSection: View {
    let userPost: UserModel

    var body: some View {
        HStack {
            Text(userPost.username).bold()
            + Text(" ")
            + Text(CommentModel.getComments().randomElement()!.comment)
        }
        .font(.system(size: 13))
        .frame(maxWidth: .infinity,alignment: .leading)
        .padding(.horizontal,14)
    }
}
