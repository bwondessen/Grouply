//
//  LoginView.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/13/23.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var viewModel: AuthViewModel = AuthViewModel()
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack(alignment: .leading, spacing: 12) {
                    HStack { Spacer() }
                    
                    Text("Hello.")
                        .font(.largeTitle)
                        .bold()
                    
                    Text("Welcome back")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.blue)
                    
                    VStack(spacing: 40) {
                        CustomTextField(imageName: "envelope", placeHolderText: "Email", isSecureField: false, text: $email)
                        
                        CustomTextField(imageName: "lock", placeHolderText: "Password", isSecureField: true, text: $password)
                    }
                    .padding([.top, .horizontal], 32)

                }
                .padding(.leading)
                
                HStack {
                    Spacer()
                    
                    NavigationLink(destination: Text("Reset Password...")) {
                        Text("Forgot Password")
                            .font(.system(size: 13, weight: .semibold))
                            .padding(.top)
                            .padding(.trailing, 28)
                    }
                }
                
                Button {
                    viewModel.login()
                } label: {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(width: 340, height: 50)
                        .background(.blue)
                        .clipShape(Capsule())
                        .padding()
                }
                .shadow(color: .gray, radius: 10, x: 0, y: 0)
                
                Spacer()
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack {
                        Text("Don't have an account?")
                            .font(.system(size: 14))
                        
                        Text("Sign Up")
                            .font(.system(size: 14, weight: .semibold))
                    }
                }
                .padding(.bottom, 32)
            }
        }
    }
}

#Preview {
    LoginView()
}
