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
    
    @State private var mCurrentImageIndex : Int = 0
    @State private var mockImages = [
        "aston_martin",
        "aston_martin_4",
        "aston_martin_2",
        "aston_martin_3",
    ]
    
    
    var body: some View {
        ZStack(alignment : .bottom) { // Stack One over other views
            ZStack(alignment : .top) {
                Image(mockImages[mCurrentImageIndex])
                    .resizable()
                .scaledToFill()
                .overlay {
                    ImageScrollingOverlay(currentImageIndex: $mCurrentImageIndex, mImageCount: mockImages.count)
                }
                
                CardImageIndicator(currentImageIndex: mCurrentImageIndex, mImageCount: mockImages.count)
                
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

//For swiping actions
private extension CardView {
    func returnToCenter() {
        xOffset = 0
        mDegrees = 0
    }
    
    func swipeRight() {
        xOffset = 500
        mDegrees = 12
    }
    
    func swipeLeft() {
        xOffset = -500
        mDegrees = -12
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
            returnToCenter()
            return // Rerun to center and stop and avoid reaching below condition statement
        }
        
        if width >= SizeConstants.mScreenCutOff {
            swipeRight()
        } else {
            swipeLeft()
        }
    }
}

#Preview {
    CardView()
}
