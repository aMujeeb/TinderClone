//
//  UserInfoView.swift
//  TinderClone
//
//  Created by Ahamed Mujeeb on 29/4/24.
//

import SwiftUI

struct UserInfoView: View {
    let mUser : UserCar
    
    var body: some View {
        VStack(alignment : .center) {
            HStack{
                Text(mUser.fullName)
                    .font(.title)
                    .fontWeight(.bold)
                    .lineLimit(2)
                
                Text("\(mUser.age)")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Button {
                    print("Debug Show profile here..")
                } label : {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                }.padding(EdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 0))
            }
            
            Text("Some Text")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundStyle(.white)
        .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 32))
        .background(
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    UserInfoView(mUser: MockData.users[2])
}
