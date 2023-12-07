//
//  NewMessageView.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/24/23.
//

import SwiftUI

struct NewMessageView: View {
    @Environment(\.dismiss) var dismiss
    
    @ObservedObject var viewModel: NewMessageViewModel = NewMessageViewModel()
    
    @Binding var showChatView: Bool
    @Binding var user: User?
    
    @State private var searchText: String = ""
    @State private var isEditing: Bool = false
    
    var body: some View {
        ScrollView {
            SearchBarView(text: $searchText, isEditing: $isEditing)
                .onTapGesture {
                    isEditing.toggle()
                }
                .padding()
            
            VStack(alignment: .leading) {
                ForEach(viewModel.users) { user in
                    Button {
                        showChatView.toggle()
                        self.user = user
                        dismiss()
                    } label: {
                        UserCellView(user: user)
                    }
                }
            }
        }
    }
}

//#Preview {
//    NewMessageView(showChatView: .constant(true))
//}
