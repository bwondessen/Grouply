//
//  ChatBubbleView.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/25/23.
//

import SwiftUI

struct ChatBubbleView: Shape {
    var isFromCurrentUswer: Bool
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topRight, .topLeft, isFromCurrentUswer ? .bottomLeft : .bottomRight], cornerRadii: CGSize(width: 16, height: 16))
        
        return Path(path.cgPath)
    }
}

#Preview {
    ChatBubbleView(isFromCurrentUswer: true)
}
