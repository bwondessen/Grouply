//
//  StatusViewModel.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/20/23.
//

import Foundation

enum UserStatus: Int, CaseIterable {
    case nonConfigured
    case available
    case busy
    case school
    case movies
    case work
    case batteryLow
    case meeting
    case gym
    case sleeping
    case urgenCallsOnly
    
    var title: String {
        switch self {
        case .nonConfigured:
            return "Click here to update your status"
        case .available:
            return "Available"
        case .busy:
            return "Busy"
        case .school:
            return "At school"
        case .movies:
            return "At the movies"
        case .work:
            return "At work"
        case .batteryLow:
            return "Battery about to die"
        case .meeting:
            return "In a meeting"
        case .gym:
            return "At the gym"
        case .sleeping:
            return "Sleeping"
        case .urgenCallsOnly:
            return "Urgent calls only"
        }
    }
}
