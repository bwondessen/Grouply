//
//  UserCellView.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/24/23.
//

import SwiftUI

struct ConversationCellView: View {
    var body: some View {
        VStack {
            HStack {
                Image("user0")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Bruke Wondessen")
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("This is a test message for now...")
                        .font(.system(size: 15))
                }
                .foregroundStyle(.black)
                
                Spacer()
            }
            .padding(.horizontal)
            
            Divider()
        }
        .padding(.top)
    }
}

#Preview {
    ConversationCellView()
}
