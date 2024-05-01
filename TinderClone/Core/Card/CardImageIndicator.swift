//
//  CardImageIndicator.swift
//  TinderClone
//
//  Created by Ahamed Mujeeb on 1/5/24.
//

import SwiftUI

struct CardImageIndicator: View {
    let currentImageIndex : Int
    let mImageCount : Int
    
    var body: some View {
        HStack {
            ForEach(0 ..< mImageCount, id:\.self) { index in
                Capsule()
                    .foregroundStyle(currentImageIndex == index ? .white : .gray)
                    .frame(width: imageIndicatorWidth, height: 4)
                    .padding(.top, 8)
            }
        }.padding(.horizontal, 8)
    }
}

private extension CardImageIndicator {
    var imageIndicatorWidth : CGFloat {
        return SizeConstants.mCardWidth / CGFloat(mImageCount) - 28 //Pre determined by testing values
    }
}

#Preview {
    CardImageIndicator(currentImageIndex: 1, mImageCount:2)
        .preferredColorScheme(.dark) //Assigning a theme
}
