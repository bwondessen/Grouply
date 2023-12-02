//
//  GrouplyApp.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/13/23.
//

import SwiftUI
import Firebase

@main
struct GrouplyApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AuthViewModel.shared)
        }
    }
}
