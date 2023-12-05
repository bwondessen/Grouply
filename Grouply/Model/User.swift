//
//  User.swift
//  Grouply
//
//  Created by Bruke Wondessen on 12/4/23.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullName: String
    let email: String
    let profileImageUrl: String
}
