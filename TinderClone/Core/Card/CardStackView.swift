//
//  CardStackView.swift
//  TinderClone
//
//  Created by Ahamed Mujeeb on 1/5/24.
//

import SwiftUI

struct CardStackView: View {
    var body: some View {
        ZStack {
            ForEach(0 ..< 10) { card in
                CardView()
            }
        }
    }
}

#Preview {
    CardStackView()
}
