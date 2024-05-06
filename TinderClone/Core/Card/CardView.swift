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
    
    let mModel : CardModel
    
    var body: some View {
        ZStack(alignment : .bottom) { // Stack One over other views
            ZStack(alignment : .top) {
                Image(user.profileImageUrls[mCurrentImageIndex])
                    .resizable()
                .scaledToFill()
                .frame(width: SizeConstants.mCardWidth, height: SizeConstants.mCardHeight)
                .overlay {
                    ImageScrollingOverlay(currentImageIndex: $mCurrentImageIndex, mImageCount: imageCount)
                }
                
                CardImageIndicator(currentImageIndex: mCurrentImageIndex, mImageCount: imageCount)
                
                SwipeActionIndicatorView(xOffset: $xOffset)
            }
            
            UserInfoView(mUser: user)
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

private extension CardView {
    var user : UserCar {
        return mModel.user
    }
    
    var imageCount : Int {
        return user.profileImageUrls.count
    }
}

#Preview {
    CardView(mModel: CardModel(user: MockData.users[1]))
}
