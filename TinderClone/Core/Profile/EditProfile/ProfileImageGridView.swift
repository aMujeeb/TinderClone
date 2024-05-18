//
//  ProfileImageGridView.swift
//  TinderClone
//
//  Created by Ahamed Mujeeb on 17/5/24.
//

import SwiftUI

struct ProfileImageGridView: View {
    
    let mUser : UserCar
    var body: some View {
        LazyVGrid(columns: mColumns, spacing: 16) {
            ForEach(0 ..< 6){ index in
                if(index < mUser.profileImageUrls.count) {
                    Image(mUser.profileImageUrls[index])
                        .resizable()
                        .scaledToFit()
                        .frame(width: imageWidth, height: imageHeight)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                } else {
                    ZStack(alignment: .bottomTrailing) {
                        RoundedRectangle(cornerRadius : 10)
                            .fill(Color(.secondarySystemBackground))
                            .frame(width: imageWidth, height: imageHeight)
                        
                        Image(systemName: "plus.circle.fill")
                            .imageScale(.large)
                            .foregroundStyle(Color(.blue))
                            .offset(x : 4, y: 4)
                    }
                }
            }
        }
    }
}

private extension ProfileImageGridView {
    var mColumns : [GridItem] {
        [
            .init(.flexible()),
            .init(.flexible()),
            .init(.flexible())
        ]
    }
    
    var imageWidth : CGFloat {
        return 110
    }
    
    var imageHeight : CGFloat {
        return 160
    }
}

#Preview {
    ProfileImageGridView(mUser: MockData.users[2])
}
