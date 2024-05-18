//
//  EditProfileView.swift
//  TinderClone
//
//  Created by Ahamed Mujeeb on 17/5/24.
//

import SwiftUI

struct EditProfileView: View {
    
    @Environment(\.dismiss) var mDismiss
    let mUser : UserCar
    @State private var bio = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                ProfileImageGridView(mUser: mUser)
                    .padding()
                
                VStack(spacing : 24) {
                    VStack(alignment : .leading) {
                        Text("About Me")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.leading)
                        
                        TextField("Add your bio", text : $bio, axis : .vertical)
                            .padding()
                            .frame(height: 64, alignment : .top)
                            .background(Color(.blue))
                            .font(.subheadline)
                    }
                }
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        mDismiss()
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {
                        mDismiss()
                    }
                    .fontWeight(.semibold)
                }
            }
        }
    }
}

#Preview {
    EditProfileView(mUser: MockData.users[2])
}
