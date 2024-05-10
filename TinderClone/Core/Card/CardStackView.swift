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
        ZStack {
            ForEach(mViewModel.mCardModels) { card in
                CardView(mModel: card, mViewModel: mViewModel)
            }
            .onChange(of: mViewModel.mCardModels) { oldValue, newValue in //Available form IOS17
                print("DEBUG: Old value count is \(oldValue.count)")
                print("DEBUG: New value count is \(newValue.count)")
            }
        }
    }
}

#Preview {
    CardStackView()
}
