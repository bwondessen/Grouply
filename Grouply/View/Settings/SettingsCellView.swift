//
//  SettingsCellView.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/15/23.
//

import SwiftUI

struct SettingsCellView: View {
    let viewModel: SettingsCellViewModel
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: viewModel.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22, height: 22)
                    .padding(6)
                    .background(viewModel.backgroundColor)
                    .foregroundStyle(.white)
                    .cornerRadius(6)
                
                Text(viewModel.title)
                    .font(.system(size: 15))
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
            }
            .padding([.top, .horizontal])
            
            Divider()
                .padding(.leading)
        }
        .background(.white)
    }
}

//#Preview {
//    SettingsCellView()
//}
