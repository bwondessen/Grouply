//
//  EditProfileView.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/16/23.
//

import SwiftUI

struct EditProfileView: View {
    @State private var fullName: String = "Bruke Wondessen"
    @State private var showImagePicker: Bool = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
    
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 44) {
                // Header
                VStack {
                    // Photo / edit button / text
                    HStack {
                        // Photo / edit button
                        VStack {
                            if let profileImage = profileImage {
                                profileImage
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 64, height: 64)
                                    .clipShape(Circle())
                            } else {
                                Image("user0")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 64, height: 64)
                                    .clipShape(Circle())
                            }
                            
                            Button {
                                showImagePicker.toggle()
                            } label: {
                                Text("Edit")
                            }
                            .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
                                ImagePicker(image: $selectedImage)
                            }
                        }
                        .padding(.top)
                        
                        Text ("Enter your name or change your profile photo")
                            .font(.system(size: 16))
                            .foregroundStyle(.gray)
                            .padding([.bottom, .horizontal])
                    }
                    
                    Divider()
                        .padding(.horizontal)
                    
                    TextField("", text: $fullName)
                        .padding(8)
                }
                .background(.white)
                
                // Status
                VStack(alignment: .leading) {
                    // Status text
                    Text("Status")
                        .padding()
                        .foregroundStyle(.gray)
                    // Status
                    NavigationLink {
                        StatusSelectorView()
                    } label: {
                        HStack {
                            Text("At the movies")
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundStyle(.gray)
                        }
                        .padding()
                        .background(.white)
                    }
                }
                
                Spacer()
            }
        }
        .navigationTitle("Edit Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        
        profileImage = Image(uiImage: selectedImage)
    }
}

#Preview {
    EditProfileView()
}
