//
//  UserCellView.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/24/23.
//

import SwiftUI

struct ConversationCellView: View {
    var body: some View {
        HStack {
            Image("user0")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("Bruke Wondessen")
                    .font(.system(size: 14, weight: .semibold))
                
                Text("")
            }
        }
    }
}

#Preview {
    ConversationCellView()
}
