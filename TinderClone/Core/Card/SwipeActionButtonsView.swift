//
//  SwipeActionButtonsView.swift
//  TinderClone
//
//  Created by Ahamed Mujeeb on 10/5/24.
//

import SwiftUI

struct SwipeActionButtonsView: View {
    @ObservedObject var mViewModel : CardViewModel
    var body: some View {
        HStack(spacing: 32) {
            Button {
                mViewModel.mButtonSwipeAction = .reject
            } label: {
                Image(systemName: "xmark")
                    .fontWeight(.heavy)
                    .foregroundStyle(.red)
                    .background {
                        Circle()
                            .fill(.white)
                            .frame(width: 48, height: 48)
                            .shadow(radius: 6)
                    }
            }.frame(width: 48, height: 48)
            
            
            Button {
                mViewModel.mButtonSwipeAction = .like
            } label: {
                Image(systemName: "heart.fill")
                    .fontWeight(.heavy)
                    .foregroundStyle(.green)
                    .background {
                        Circle()
                            .fill(.white)
                            .frame(width: 48, height: 48)
                            .shadow(radius: 6)
                    }
            }.frame(width: 48, height: 48)
        }
    }
}

#Preview {
    SwipeActionButtonsView(mViewModel: CardViewModel(service: CardService()))
}
