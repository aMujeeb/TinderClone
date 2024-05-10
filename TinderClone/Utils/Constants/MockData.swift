//
//  MockData.swift
//  TinderClone
//
//  Created by Ahamed Mujeeb on 6/5/24.
//

import Foundation

struct MockData {
    static let users: [UserCar] = [
        .init(
            id: NSUUID().uuidString,
            fullName: "Aston Martin",
            age: 2007,
            profileImageUrls: [
                "aston_martin",
                "aston_martin",
                "aston_martin"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullName: "Aston Martin",
            age: 2012,
            profileImageUrls: [
                "aston_martin_2",
                "aston_martin_2",
                "aston_martin_2"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullName: "Aston Martin",
            age: 2016,
            profileImageUrls: [
                "aston_martin_3",
                "aston_martin_3",
                "aston_martin_3"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullName: "Aston Martin",
            age: 2013,
            profileImageUrls: [
                "aston_martin_4",
                "aston_martin_4",
                "aston_martin_4"
            ]
        )
    ]
}
