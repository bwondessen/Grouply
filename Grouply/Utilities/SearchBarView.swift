//
//  SearchBarView.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/24/23.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var text: String
    @Binding var isEditing: Bool
    
    var body: some View {
        HStack {
            TextField("Search...", text: $text)
                .padding(8)
                .padding(.horizontal, 28)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(.gray)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 8)
                )
            
            if isEditing {
                withAnimation(.default) {
                    Button {
                        isEditing = false
                        text = ""
                        UIApplication.shared.endEditing()
                    } label: {
                        Text("Cancel")
                            .foregroundStyle(.black)
                    }
                    .padding(.trailing, 8)
                    .transition(.move(edge: .trailing))
                }
            }
        }
    }
}

#Preview {
    SearchBarView(text: .constant("Search..."), isEditing: .constant(false))
}
