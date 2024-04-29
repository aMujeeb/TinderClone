//
//  UserInfoView.swift
//  TinderClone
//
//  Created by Ahamed Mujeeb on 29/4/24.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment : .center) {
            HStack{
                Text("Aston Martin")
                    .font(.title)
                    .fontWeight(.bold)
                    .lineLimit(2)
                
                Text("2022")
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
            
            Text("Vantage | V10")
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
    UserInfoView()
}
