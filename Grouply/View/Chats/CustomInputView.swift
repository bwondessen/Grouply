//
//  CustomInputView.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/27/23.
//

import SwiftUI

struct CustomInputView: View {
    @Binding var text: String
    
    var action: () -> Void
    
    var body: some View {
        VStack {
            Rectangle()
                .foregroundStyle(Color(.separator))
                .frame(width: UIScreen.main.bounds.width, height: 0.75)
            
            HStack {
                TextField("Message...", text: $text)
                    .textFieldStyle(.plain)
                    .font(.body)
                    .frame(minHeight: 30)
                
                Button(action: action) {
                    Text("Send")
                        .foregroundStyle(.black)
                        .bold()
                }
            }
            .padding(.bottom, 8)
            .padding(.horizontal)
        }
    }
}

//#Preview {
//    CustomInputView(text: .constant("Message..."))
//}
