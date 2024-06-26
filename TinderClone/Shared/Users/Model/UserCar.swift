//
//  User.swift
//  TinderClone
//
//  Created by Ahamed Mujeeb on 6/5/24.
//

import Foundation

struct UserCar: Identifiable, Hashable {
    let id: String
    let fullName : String
    var age : Int
    var profileImageUrls : [String]
    let bio : String
}
