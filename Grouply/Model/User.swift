//
//  User.swift
//  Grouply
//
//  Created by Bruke Wondessen on 12/4/23.
//

import Foundation
import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullName: String
    let email: String
    let profileImageUrl: String
}

let MOCK_USER = User(id: NSUUID().uuidString, username: "Test", fullName: "test", email: "test@gmail.com", profileImageUrl: "")
