//
//  NewMessageViewModel.swift
//  Grouply
//
//  Created by Bruke Wondessen on 12/5/23.
//

import SwiftUI
import Firebase

class NewMessageViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        COLLECTION_USERS.getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            
            // Alternative to commented out code below
            self.users = documents.compactMap { try? $0.data(as: User.self) }
                .filter({ $0.id != AuthViewModel.shared.userSession?.uid })
            
//            documents.forEach { document in
//                guard let user = try? document.data(as: User.self) else { return }
//                self.users.append(user)
//            }
        }
    }
}
