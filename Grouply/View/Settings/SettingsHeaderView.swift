//
//  SettingsHeaderView.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/15/23.
//

import SwiftUI

struct SettingsHeaderView: View {
    private let user: User
    
    init(user: User) {
        self.user = user
    }
    
    var body: some View {
        HStack {
            Image("user0")
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .padding(.leading)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(user.fullName)
                    .font(.system(size: 18))
                    .foregroundStyle(.black)
                
                Text("Available")
                    .foregroundStyle(.gray)
                    .font(.system(size: 14))
            }
            
            Spacer()
        }
        .background(.white)
        .frame(height: 80)
    }
}

//#Preview {
//    SettingsHeaderView()
//}
