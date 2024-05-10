//
//  CardModel.swift
//  TinderClone
//
//  Created by Ahamed Mujeeb on 6/5/24.
//

import Foundation

struct CardModel {
    let user : UserCar
}

extension CardModel : Identifiable, Hashable {
    var id : String { return user.id }
}
