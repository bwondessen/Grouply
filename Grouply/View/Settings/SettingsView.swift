//
//  SettingsView.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/14/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 32) {
                NavigationLink {
                    EditProfileView()
                } label: {
                    SettingsHeaderView()
                }

                
                VStack(spacing: 1) {
                    ForEach(SettingsCellViewModel.allCases, id: \.self) { viewModel in
                        SettingsCellView(viewModel: viewModel)
                    }
                }
                
                Button {
                    AuthViewModel.shared.signOut() 
                } label: {
                    Text("Log Out")
                        .foregroundStyle(.red)
                        .font(.system(size: 16, weight: .semibold))
                        .frame(width: UIScreen.main.bounds.width, height: 50)
                        .background(.white)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    SettingsView()
}
