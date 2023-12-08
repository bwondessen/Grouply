//
//  Message.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/27/23.
//

import FirebaseFirestoreSwift
import Firebase

struct Message: Identifiable, Decodable {
    @DocumentID var id: String?
    let fromId: String
    let toId: String
    let read: Bool
    let text: String
    let timeStamp: Timestamp
}
