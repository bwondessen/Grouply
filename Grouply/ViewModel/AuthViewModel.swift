//
//  AuthViewModel.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/27/23.
//

import Firebase

class AuthViewModel: NSObject, ObservableObject {
    
    func login() {
        
    }
    
    func register(withEmail email: String, password: String, fullName: String, username: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to register with error \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            
            let data: [String: Any] = ["email": email, "username": username, "fullName": fullName]
            
            Firestore.firestore().collection("users").document(user.uid).setData(data) { _ in
                print("DEBUG: Succesfully updated user info in Firestore...")
            }
        }
    }
    
    func uploadProfileImage() {
        
    }
    
    func signOut() {
        
    }
}
