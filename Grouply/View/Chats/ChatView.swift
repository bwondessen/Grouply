//
//  ChatsView.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/14/23.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        VStack {
            // Messages
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(0...10, id: \.self) { _ in
                        MessageView(isFromCurrentUser: true)
                    }
                }
            }
            
            // Input view
        }
        .navigationTitle("Chat")
        .navigationBarTitleDisplayMode(.inline)
        .padding(.vertical)
    }
}

#Preview {
    ChatView()
}
