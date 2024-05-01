//
//  ImageScrollingOverlay.swift
//  TinderClone
//
//  Created by Ahamed Mujeeb on 1/5/24.
//

import SwiftUI

struct ImageScrollingOverlay: View {
    
    @Binding var currentImageIndex : Int
    let  mImageCount : Int
    
    var body: some View {
        HStack {
            Rectangle().onTapGesture {
                updateImageIndex(increment: false)
            }
            
            Rectangle().onTapGesture {
                updateImageIndex(increment: true)
            }
        }
        .foregroundColor(.white.opacity(0.01))
    }
}

private extension ImageScrollingOverlay {
    func updateImageIndex(increment : Bool) {
        if increment {
            guard currentImageIndex < mImageCount - 1 else { return }
            currentImageIndex += 1
        } else {
            guard currentImageIndex > 0 else { return }
            currentImageIndex -= 1
        }
    }
}

#Preview {
    ImageScrollingOverlay(currentImageIndex: .constant(1), mImageCount: 2)
}
