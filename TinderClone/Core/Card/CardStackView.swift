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
                CardView(mModel: card)
            }
        }
    }
}

#Preview {
    CardStackView()
}
