//
//  CurrentUserProfileHeaderView.swift
//  TinderClone
//
//  Created by Ahamed Mujeeb on 17/5/24.
//

import SwiftUI

struct CurrentUserProfileHeaderView: View {
    let mUser : UserCar
    
    var body: some View {
        VStack {
            
            ZStack(alignment: .topTrailing) {
                Image(mUser.profileImageUrls[0])
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                .clipShape(Circle())
                .background {
                    Circle()
                        .fill(.white)
                        .frame(width: 128, height: 128)
                        .shadow(radius: 10)
                }
                
                Image(systemName: "pencil")
                    .imageScale(.small)
                    .foregroundStyle(.gray)
                    .background {
                        Circle()
                            .fill(.white)
                            .frame(width: 32, height: 32)
                    }
                    .offset(x: -8, y: 10)
            }
            
            Text("\(mUser.fullName), \(mUser.age)")
                .font(.title2)
                .fontWeight(.light)
        }
        .frame(maxWidth: .infinity)
        .frame(height :240)
    }
}

#Preview {
    CurrentUserProfileHeaderView(mUser: MockData.users[0])
}
