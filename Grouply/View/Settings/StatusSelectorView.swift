//
//  StatusSelectorView.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/19/23.
//

import SwiftUI

struct StatusSelectorView: View {
    @ObservedObject var viewModel: StatusViewModel = StatusViewModel()
    
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("CURRENTLY SET TO")
                        .foregroundStyle(.gray)
                        .padding()
                    
                    StatusCellView(status: viewModel.status)
                    
                    Text("SELECT YOUR STATUS")
                        .foregroundStyle(.gray)
                        .padding()
                    
                    // For loop with options
                    VStack(spacing: 0) {
                        ForEach(UserStatus.allCases.filter({ $0 != .nonConfigured }), id: \.self) { status in
                            Button {
                                viewModel.updateStatus(status)
                            } label: {
                                StatusCellView(status: status)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    StatusSelectorView()
}

struct StatusCellView: View {
    let status: UserStatus
    
    var body: some View {
        HStack {
            Text(status.title)
                .foregroundStyle(.black)
            Spacer()
        }
        .padding()
        .background(.white)
    }
}
