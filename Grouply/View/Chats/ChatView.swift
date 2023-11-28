//
//  ChatsView.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/14/23.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText: String = ""
    @ObservedObject var viewModel: ChatViewModel = ChatViewModel()
    
    var body: some View {
        VStack {
            // Messages
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(viewModel.messages) { message in
                        MessageView(isFromCurrentUser:  message.isFromCurrentUser, messageText: message.messageText)
                    }
                }
            }
            
            // Input view
            CustomInputView(text: $messageText, action: sendMessage)
        }
        .navigationTitle("Chat")
        .navigationBarTitleDisplayMode(.inline)
        .padding(.vertical)
    }
    
    func sendMessage() {
        viewModel.sendMessage(messageText)
        messageText = ""
    }
}

#Preview {
    ChatView()
}
