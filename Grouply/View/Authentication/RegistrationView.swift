//
//  RegistrationView.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/13/23.
//

import SwiftUI

struct RegistrationView: View {
    @Environment(\.dismiss) var dismiss
    
    @ObservedObject var viewModel: AuthViewModel = AuthViewModel()
    
    @State private var email = ""
    @State private var password = ""
    @State private var fullName = ""
    @State private var username = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack(alignment: .leading, spacing: 12) {
                    HStack { Spacer() }
                    
                    Text("Get started.")
                        .font(.largeTitle)
                        .bold()
                    
                    Text("Create your account.")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.blue)
                    
                    VStack(spacing: 40) {
                        CustomTextField(imageName: "envelope", placeHolderText: "Email", isSecureField: false, text: $email)
                        
                        CustomTextField(imageName: "person", placeHolderText: "Username", isSecureField: false, text: $username)
                        
                        CustomTextField(imageName: "person", placeHolderText: "Full name", isSecureField: false, text: $fullName)
                        
                        CustomTextField(imageName: "lock", placeHolderText: "Password", isSecureField: true, text: $password)
                    }
                    .padding([.top, .horizontal], 32)

                }
                .padding(.leading)
                
                Button {
                    viewModel.register(withEmail: email, password: password, fullName: fullName, username: username)
                } label: {
                    Text("Sign  Up")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(width: 340, height: 50)
                        .background(.blue)
                        .clipShape(Capsule())
                        .padding()
                }
                .padding(.top, 24)
                .shadow(color: .gray, radius: 10, x: 0, y: 0)
                
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    HStack {
                        Text("Already have an account?")
                            .font(.system(size: 14))
                        
                        Text("Sign In")
                            .font(.system(size: 14, weight: .semibold))
                    }
                }
                .padding(.bottom, 32)
            }
            .navigationDestination(isPresented: $viewModel.didAuthenticateUser) {
                ProfilePhotoSelectorView()
        }
        }
    }
}

#Preview {
    RegistrationView()
}
