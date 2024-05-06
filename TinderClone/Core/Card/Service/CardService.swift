//
//  CardService.swift
//  TinderClone
//
//  Created by Ahamed Mujeeb on 6/5/24.
//

import Foundation

struct CardService {
    func fetchCardModels() async throws -> [CardModel] {
        let users = MockData.users
        return users.map( {CardModel(user: $0)} )
    }
}
