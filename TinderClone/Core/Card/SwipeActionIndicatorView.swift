//
//  SwipeActionIndicatorView.swift
//  TinderClone
//
//  Created by Ahamed Mujeeb on 29/4/24.
//

import SwiftUI

struct SwipeActionIndicatorView: View {
    
    @Binding var xOffset : CGFloat
    
    var body: some View {
        HStack {
            Image(.tick)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .rotationEffect(.degrees(-20))
                .opacity(Double(xOffset / SizeConstants.mScreenCutOff))
            
            Image(.cross)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .rotationEffect(.degrees(-20))
                .opacity(Double(xOffset / SizeConstants.mScreenCutOff) * -1)
        }
        .padding(64)
    }
}

#Preview {
    SwipeActionIndicatorView(xOffset: .constant(20))
}
