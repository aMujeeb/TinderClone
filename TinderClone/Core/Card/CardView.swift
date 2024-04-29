//
//  CardView.swift
//  TinderClone
//
//  Created by Ahamed Mujeeb on 29/4/24.
//

import SwiftUI

struct CardView: View {
   
    @State private var xOffset: CGFloat = 0
    @State private var mDegrees: Double = 0
    
    var body: some View {
        ZStack(alignment : .bottom) { // Stack One over other views
            ZStack {
                Image(.astonMartin)
                    .resizable()
                .scaledToFill()
                
                SwipeActionIndicatorView(xOffset: $xOffset)
            }
            
            UserInfoView()
                .padding(.horizontal)
        }
        .frame(width: SizeConstants.mCardWidth, height: SizeConstants.mCardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x:xOffset)
        .rotationEffect(.degrees(mDegrees))
        .animation(.snappy, value: xOffset)
        .gesture(
            DragGesture()
                .onChanged(onDragChanged)
                .onEnded(onDragEnded)
        )
    }
}

private extension CardView {
    func onDragChanged(_ value: _ChangedGesture<DragGesture>.Value) {
        xOffset = value.translation.width
        mDegrees = Double(value.translation.width / 25)
    }
    
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value) {
        let width = value.translation.width
        
        if abs(width) <= abs(SizeConstants.mScreenCutOff) { // To based on screen width
            xOffset = 0
            mDegrees = 0
        }
    }
}

#Preview {
    CardView()
}
