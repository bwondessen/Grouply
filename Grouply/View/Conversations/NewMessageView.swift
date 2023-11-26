//
//  NewMessageView.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/24/23.
//

import SwiftUI

struct NewMessageView: View {
    @Environment(\.dismiss) var dismiss
    
    @Binding var showChatView: Bool
    
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
                ForEach(0...10, id: \.self) { _ in
                    Button {
                        showChatView.toggle()
                        dismiss()
                    } label: {
                        UserCellView()
                    }
                }
            }
        }
    }
}

#Preview {
    NewMessageView(showChatView: .constant(true))
}
