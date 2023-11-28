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
        Auth.auth().createUser(withEmail: email, password: password) { Result, error in
            if let error = error {
                print("DEBUG: Failed to register with error \(error.localizedDescription)")
                return
            }
            
            print("DEBUG: Successfully registered user with Firebase!")
        }
    }
    
    func uploadProfileImage() {
        
    }
    
    func signOut() {
        
    }
}
