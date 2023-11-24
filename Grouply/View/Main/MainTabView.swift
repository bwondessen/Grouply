//
//  MainTabView.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/14/23.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex: Int = 0
    
    var body: some View {
        NavigationStack {
            TabView(selection: $selectedIndex) {
                ConversationsView()
                    .tabItem {
                        Image(systemName: "bubble.left")
                    }
                    .tag(0)
                
                ChannelsView()
                    .tabItem {
                        Image(systemName: "bubble.left.and.bubble.right")
                    }
                    .tag(1)
                
                SettingsView()
                    .tabItem {
                        Image(systemName: "gear")
                    }
                    .tag(2)
            }
            .navigationTitle(tabTitle)
        }
    }
    
    var tabTitle: String {
        switch selectedIndex {
        case 0:
            return "Chats"
        case 1:
            return "Channels"
        case 2:
            return "Settings"
        default:
            return ""
        }
    }
}

#Preview {
    MainTabView()
}
