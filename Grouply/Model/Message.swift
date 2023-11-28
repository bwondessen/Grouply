//
//  Message.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/27/23.
//

import Foundation

struct Message: Identifiable {
    let id = NSUUID().uuidString
    let isFromCurrentUser: Bool
    let messageText: String
}
