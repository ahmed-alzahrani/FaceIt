//
//  FacialExpression.swift
//  FaceIt
//
//  Created by Ahmed Al-Zahrani on 2018-05-06.
//  Copyright © 2018 Ahmed Al-Zahrani. All rights reserved.
//

import Foundation

// UI - Independant

struct FacialExpression {
    
    enum Eyes: Int {
        case open
        case closed
        case squinting
    }
    
    enum Mouth: Int {
        case frown
        case smirk
        case neutral
        case grin
        case smile
    
    
    var sadder: Mouth{
        return Mouth(rawValue: rawValue - 1) ?? .frown
    }
    
    var happier: Mouth {
        return Mouth(rawValue: rawValue + 1) ?? .smile
    }
}
    var sadder: FacialExpression {
        return FacialExpression(eyes: self.eyes, mouth: self.mouth.sadder)
    }
    
    var happier: FacialExpression {
        return FacialExpression(eyes: self.eyes, mouth: self.mouth.sadder)
    }
    
    let eyes: Eyes
    let mouth: Mouth

}
