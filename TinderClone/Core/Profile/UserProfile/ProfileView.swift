//
//  ProfileView.swift
//  TinderClone
//
//  Created by Ahamed Mujeeb on 11/5/24.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.dismiss) var dismiss
    let mUser : UserCar
    @State private var mCurrentImageIndex = 0
    
    var body: some View {
        VStack {
            HStack {
                Text(mUser.fullName)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("\(mUser.age)")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.down.circle.fill")
                        .imageScale(.large)
                        .fontWeight(.bold)
                        .foregroundStyle(.primary)
                }
            }
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ZStack(alignment: .top) {
                        Image(mUser.profileImageUrls[mCurrentImageIndex])
                            .resizable()
                        .scaledToFill()
                        .frame(width: SizeConstants.mCardWidth, height: SizeConstants.mCardHeight)
                        .overlay {
                            ImageScrollingOverlay(currentImageIndex: $mCurrentImageIndex, mImageCount: mUser.profileImageUrls.count)
                        }
                        CardImageIndicator(currentImageIndex: mCurrentImageIndex, mImageCount: mUser.profileImageUrls.count)
                    }
                    
                    VStack(alignment : .leading, spacing: 12) {
                        Text("About Me")
                            .fontWeight(.semibold)
                        
                        /*if let bios = mUser.bio {
                            Text(bios)
                        } */
                        Text(mUser.bio)
                    }
                    .frame(maxWidth : .infinity, alignment: .leading)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .font(.subheadline)
                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                }
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("Essentials ").fontWeight(.semibold )
                    
                    HStack {
                        Image(systemName: "person")
                        Text("Car")
                        Spacer()
                    }
                    .font(.subheadline)
                    
                    HStack {
                        Image(systemName: "person")
                        Text("Petrol")
                        Spacer()
                    }
                    .font(.subheadline)
                    
                    HStack {
                        Image(systemName: "person")
                        Text("V8")
                        Spacer()
                    }
                    .font(.subheadline)
                }
                .padding()
                .background(Color(.secondarySystemBackground))
                .font(.subheadline)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
    }
}

#Preview {
    ProfileView(mUser: MockData.users[0])
}
