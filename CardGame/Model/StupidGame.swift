//
//  StupidGame.swift
//  CardGame
//
//  Created by Hill, Isaac on 11/11/16.
//  Copyright © 2016 Hill, Isaac. All rights reserved.
//

import Foundation

class StupidGame
{
    internal var gameDeckOne : PlayingCardDeck
    internal var gameDeckTwo : PlayingCardDeck
    internal var gameCardOne : PlayingCard
    internal var gameCardTwo : PlayingCard
    internal var point = Int()
    
    init()
    {
        gameDeckOne = PlayingCardDeck()
        gameDeckTwo = PlayingCardDeck()
        gameCardOne = PlayingCard()
        gameCardTwo = PlayingCard()
        point = 0
    }
    
    func startGame() -> Void
    {
        
    }
}