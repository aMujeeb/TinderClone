//
//  SizeConstants.swift
//  TinderClone
//
//  Created by Ahamed Mujeeb on 29/4/24.
//

import SwiftUI


struct SizeConstants {
    
    static var mScreenCutOff : CGFloat {
        (UIScreen.main.bounds.width / 2) * 0.8 //Proven value :)
    }
    
    static var mCardWidth : CGFloat {
        UIScreen.main.bounds.width - 20
    }
    
    static var mCardHeight : CGFloat {
        UIScreen.main.bounds.height / 1.45
    }
}
