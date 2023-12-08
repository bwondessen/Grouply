//
//  ChatViewModel.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/27/23.
//

import Foundation

class ChatViewModel: ObservableObject {
    @Published var messages: [Message] = [Message]()
    
    init() {
        messages = mockMessages
    }
    
    var mockMessages: [Message] {
        [
            .init(isFromCurrentUser: true, messageText: "Hey, whats up!"),
            .init(isFromCurrentUser: false, messageText: "Just got off work"),
            .init(isFromCurrentUser: false, messageText: "What's the plan?"),
            .init(isFromCurrentUser: true, messageText: "You tryna go to the park and play soccer with us?"),
            .init(isFromCurrentUser: false, messageText: "Yeah, I'm down"),
            .init(isFromCurrentUser: false, messageText: "What time ya'll meeting up?"),
            .init(isFromCurrentUser: true, messageText: "At like 6 PM"),
            .init(isFromCurrentUser: true, messageText: "Hopefully everyone is on time today 😂"),
            .init(isFromCurrentUser: false, messageText: "💀💀😂"),
            .init(isFromCurrentUser: false, messageText: "Seriously"),
            .init(isFromCurrentUser: true, messageText: "I'll hit everyone up again just to make sure"),
            .init(isFromCurrentUser: false, messageText: "Ya'll doing anything afterwards?"),
            .init(isFromCurrentUser: true, messageText: "Probably stop by McDonald's"),
            .init(isFromCurrentUser: true, messageText: "Then chill at Chris' crib after"),
            .init(isFromCurrentUser: true, messageText: "Everyone but David is going. He said he gotta study for final exams"),
            .init(isFromCurrentUser: false, messageText: "Sounds like a plan"),
            .init(isFromCurrentUser: false, messageText: "I'm gonna get ready now and I'll see you then"),
            .init(isFromCurrentUser: true, messageText: "Bet"),
            .init(isFromCurrentUser: true, messageText: "Just lmk when you're on the way"),
            .init(isFromCurrentUser: false, messageText: "I got you")
        ]
    }
    
    func sendMessage(_ messageText: String) {
        let message = Message(isFromCurrentUser: true, messageText: messageText)
        messages.append(message)
    }
}
