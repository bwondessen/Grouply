//
//  ProfilePhotoSelectorView.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/28/23.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
//    @EnvironmentObject var viewModel: AuthViewModel
    
    @ObservedObject var viewModel: AuthViewModel = AuthViewModel()
    
    @State private var imagePickerPresented: Bool = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
    
    var body: some View {
        VStack {
            Button {
                imagePickerPresented.toggle()
            } label: {
                if let profileImage = profileImage {
                    profileImage
                        .resizable()
                        .scaledToFill()
                        .frame(width: 180, height: 180)
                        .clipShape(Circle())
                } else {
                    Image("addPhoto")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFill()
                        .frame(width: 180, height: 180)
                        .clipped()
                        .padding(.top, 44)
                        .foregroundStyle(.black)
                }
            }
            .sheet(isPresented: $imagePickerPresented, onDismiss: loadImage) {
                ImagePicker(image: $selectedImage)
            }
            
            Text(profileImage == nil ? "Select a profile photo" : "Great! Tap below to continue")
                .font(.system(size: 20, weight: .semibold))
            
            if let image = selectedImage {
                Button {
                    viewModel.uploadProfileImage()
                } label: {
                    Text("Continue")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(width: 340, height: 50)
                        .background(.blue)
                        .clipShape(Capsule())
                        .padding()
                }
                .padding(.top, 24)
                .shadow(color: .gray, radius: 10, x: 0, y: 0)
            }
            
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
    }
    
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        
        profileImage = Image(uiImage: selectedImage)
    }
}

#Preview {
    ProfilePhotoSelectorView()
}
