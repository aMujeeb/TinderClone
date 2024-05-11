//
//  CardStackView.swift
//  TinderClone
//
//  Created by Ahamed Mujeeb on 1/5/24.
//

import SwiftUI

struct CardStackView: View {
    
    @StateObject var mViewModel = CardViewModel(service : CardService())
    
    var body: some View {
        
        NavigationStack {
            VStack(spacing: 16) {
                ZStack {
                    ForEach(mViewModel.mCardModels) { card in
                        CardView(mModel: card, mViewModel: mViewModel)
                    }
                }
                if !mViewModel.mCardModels.isEmpty {
                    SwipeActionButtonsView(mViewModel: mViewModel)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(.tinderlogo)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 24)
                }
            }
        }
    }
}

#Preview {
    CardStackView()
}
