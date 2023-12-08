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
    }
    
    func sendMessage(_ messageText: String) {
    }
}
