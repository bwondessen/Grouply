//
//  SettingsCellViewModel.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/16/23.
//

import SwiftUI

enum SettingsCellViewModel: Int, CaseIterable {
    case account
    case notificaitons
    case starredMessages
    
    var title: String {
        switch self {
        case .account:
            return "Account"
        case .notificaitons:
            return "Notifitcations"
        case .starredMessages:
            return "Starred Messages"
        }
    }
    
    var imageName: String {
        switch self {
        case .account:
            return "key.fill"
        case .notificaitons:
            return "bell.badge.fill"
        case .starredMessages:
            return "star.fill"
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .account:
            return .blue
        case .notificaitons:
            return .red
        case .starredMessages:
            return .yellow
        }
    }
}
