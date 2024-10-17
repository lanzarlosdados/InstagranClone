//
//  LiveTag.swift
//  InstagranClone
//
//  Created by fabian zarate on 17/10/2024.
//

import SwiftUI

struct LiveTag: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 3)
            .fill(LinearGradient(colors: [
                Color("live-1"),
                Color("live-2"),
                Color("live-3"),
            ], startPoint: .leading, endPoint: .trailing))
            .frame(width: 26, height: 16)
            .overlay {
                RoundedRectangle(cornerRadius: 3)
                    .stroke(
                        Color("background"),
                        style: StrokeStyle(lineWidth: 2))
                    .overlay {
                        Text("LIVE")
                            .foregroundStyle(Color("background"))
                            .font(.system(size: 8, weight: .medium))
                    }
            }
            .padding(-8)
    }
}

#Preview {
    LiveTag()
}
