//
//  Card.swift
//  CardGame
//
//  Created by Hill, Isaac on 10/25/16.
//  Copyright © 2016 Hill, Isaac. All rights reserved.
//

import Foundation

class Card
{
    internal var isFaceUp : Bool
    
    init()
    {
        isFaceUp = false
    }

    func isFacing() -> Bool
    {
        return isFaceUp
    }
    
    func setFacing(isFaceUp : Bool)
    {
        self.isFaceUp = isFaceUp
    }
    
    func toString() -> String
    {
        let description = "This card is \(isFaceUp)."
        
        return description
    }
}
