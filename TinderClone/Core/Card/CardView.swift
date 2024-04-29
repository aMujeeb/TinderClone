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
            Image(.monica)
                .resizable()
                .scaledToFill()
            
            UserInfoView()
                .padding(.horizontal)
        }
        .frame(width: mCardWidth, height: mCardHeight)
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

//Extracting properties to an extention. Move it into a class later as Utils or common components, constants
private extension CardView {
    //Making relative to device view size
    
    var mScreenCutOff : CGFloat {
        (UIScreen.main.bounds.width / 2) * 0.8 //Proven value :)
    }
    
    private var mCardWidth : CGFloat {
        UIScreen.main.bounds.width - 20
    }
    
    private var mCardHeight : CGFloat {
        UIScreen.main.bounds.height / 1.45
    }
}

private extension CardView {
    func onDragChanged(_ value: _ChangedGesture<DragGesture>.Value) {
        xOffset = value.translation.width
        mDegrees = Double(value.translation.width / 25)
    }
    
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value) {
        let width = value.translation.width
        
        if abs(width) <= abs(mScreenCutOff) { // To based on screen width
            xOffset = 0
            mDegrees = 0
        }
    }
}

#Preview {
    CardView()
}
