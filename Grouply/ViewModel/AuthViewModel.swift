//
//  AuthViewModel.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/27/23.
//

import Firebase
import UIKit

class AuthViewModel: NSObject, ObservableObject {
    @Published var didAuthenticateUser: Bool = false
    @Published var userSession: FirebaseAuth.User?
    
    private var tempCurrentUser: FirebaseAuth.User?
    
    override init() {
        userSession = Auth.auth().currentUser
    }
    
    func login() {
        
    }
    
    func register(withEmail email: String, password: String, fullName: String, username: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to register with error \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            self.tempCurrentUser = user

            let data: [String: Any] = ["email": email, "username": username, "fullName": fullName]
            
            Firestore.firestore().collection("users").document(user.uid).setData(data) { _ in
                self.didAuthenticateUser = true
            }
        }
    }
    
    func uploadProfileImage(_ image: UIImage) {
        guard let uid = tempCurrentUser?.uid else {
            print("DEBUG: Failed to set temp current user...")
            return
        }
        
        ImageUploader.uploadImage(image: image) { imageUrl in
            Firestore.firestore().collection("users").document(uid).updateData(["profileImageUrl": imageUrl]) { _ in
                print("DEBUG: Successfully updated user data...")
            }
        }
    }
    
    func signOut() {
        
    }
}
