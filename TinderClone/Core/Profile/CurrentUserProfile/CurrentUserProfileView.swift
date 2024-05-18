//
//  CurrentUserProfileView.swift
//  TinderClone
//
//  Created by Ahamed Mujeeb on 17/5/24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    @State private var isShowEditProfile : Bool = false
    
    let mUser : UserCar
    
    var body: some View {
        NavigationStack {
            List {
                //Header view
                CurrentUserProfileHeaderView(mUser: mUser)
                    .onTapGesture {
                        isShowEditProfile.toggle()
                    }
                
                //Account Info
                Section("Account Information") {
                    HStack {
                        Text("Name")
                        Spacer()
                        
                        Text(mUser.fullName)
                    }
                    HStack {
                        Text("Age")
                        Spacer()
                        
                        Text("Test Data")
                    }
                }
                
                //Legal
                Section("Legal") {
                    Text("Terms & Services")
                }
                
                //Log out Delete
                
                Section {
                    Button("Log Out"){
            
                    }
                    
                    Button("Delete Account"){
            
                    }
                }
                .foregroundStyle(.red)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .fullScreenCover(isPresented: $isShowEditProfile) {
                EditProfileView(mUser : mUser)
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(mUser : MockData.users[0])
}
