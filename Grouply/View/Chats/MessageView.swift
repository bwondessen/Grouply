//
//  MessageView.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/26/23.
//

import SwiftUI

struct MessageView: View {
    var isFromCurrentUser: Bool
    
    var body: some View {
        HStack {
            if isFromCurrentUser {
                Spacer()
                
                Text("Some test message for now...")
                    .padding(12)
                    .background(.blue)
                    .font(.system(size: 15))
                    .clipShape(ChatBubbleView(isFromCurrentUswer: true))
                    .foregroundStyle(.white)
                    .padding(.leading, 100)
                    .padding(.horizontal)
            } else {
                HStack(alignment: .bottom) {
                   Image("user0")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                    
                    Text("Some test message for now...")
                        .padding(12)
                        .background(Color(.systemGray5))
                        .font(.system(size: 15))
                        .clipShape(ChatBubbleView(isFromCurrentUswer: false))
                        .foregroundStyle(.black)
                }
                .padding(.horizontal)
                .padding(.trailing, 80)
                
                Spacer()
            }
        }
    }
}

#Preview {
    MessageView(isFromCurrentUser: true)
}
