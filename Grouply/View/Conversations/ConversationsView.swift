//
//  ConversationsView.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/14/23.
//

import SwiftUI

struct ConversationsView: View {
    @State private var showNewMessageView: Bool = false
    @State private var showChatView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            // Chats
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(0...10, id: \.self) { _ in
                        NavigationLink(destination: ChatView()) {
                            ConversationCellView()
                        }
                    }
                }
            }
            
            // Floating button
            Button {
                showNewMessageView.toggle()
            } label: {
                Image(systemName: "square.and.pencil")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundStyle(.white)
            .clipShape(Circle())
            .padding()
            .sheet(isPresented: $showNewMessageView) {
                NewMessageView(showChatView: $showChatView)
            }
        }
        .navigationDestination(isPresented: $showChatView) {
            ChatView()
        }
    }
}

#Preview {
    ConversationsView()
}
