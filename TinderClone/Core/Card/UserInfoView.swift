//
//  UserInfoView.swift
//  TinderClone
//
//  Created by Ahamed Mujeeb on 29/4/24.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment : .leading) {
            HStack{
                Text("Megan")
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text("37")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    print("Debug Show profile here..")
                } label : {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                }
            }
            
            Text("Actress | Nurse")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundStyle(.white)
        .padding(EdgeInsets(top: 16, leading: 48, bottom: 16, trailing: 48))
        .background(
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    UserInfoView()
}
