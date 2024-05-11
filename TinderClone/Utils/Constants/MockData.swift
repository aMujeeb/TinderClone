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
            ],
            bio: "Forged in the fires of the limit. A real sports car. To snatch sensation, evoke emotion and fire feeling from every inch of tarmac. This is real driving"
        ),
        .init(
            id: NSUUID().uuidString,
            fullName: "Aston Martin",
            age: 2012,
            profileImageUrls: [
                "aston_martin_2",
                "aston_martin_2",
                "aston_martin_2"
            ], bio: "More powerful, more muscular, and more balanced than ever before. 4.0 litres of adrenaline, turbocharging the reality of the road."
        ),
        .init(
            id: NSUUID().uuidString,
            fullName: "Aston Martin",
            age: 2016,
            profileImageUrls: [
                "aston_martin_3",
                "aston_martin_3",
                "aston_martin_3"
            ], bio: "Bolder. Purer. Sharper. DB12 is no mere GT. It’s the world’s first super tourer. A new car. Heralding a new era for Aston Martin. "
        ),
        .init(
            id: NSUUID().uuidString,
            fullName: "Aston Martin",
            age: 2013,
            profileImageUrls: [
                "aston_martin_4",
                "aston_martin_4",
                "aston_martin_4"
            ], bio: "Redefining and reinventing what it means to be a tourer. A new standard of driver connection and innovative luxury."
        )
    ]
}
