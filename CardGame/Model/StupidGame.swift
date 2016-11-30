//
//  StupidGame.swift
//  CardGame
//
//  Created by Hill, Isaac on 11/11/16.
//  Copyright © 2016 Hill, Isaac. All rights reserved.
//

import UIKit

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
        gameDeckOne.shuffleDeck()
        gameDeckTwo.shuffleDeck()
        
    }
    
    func playGame() -> Void
    {
        if let gameCardOne = gameDeckOne.drawRandomCard() as? PlayingCard
        {
            cardButtonOne.setTitle("\(gameCardOne.getCardData())", forState: UIControlState.Normal)
            cardButtonTwo.setTitle("\(gameCardTwo.getCardData())", forState: UIControlState.Normal)
            
            if gameCardOne.getRank() == gameCardTwo.getRank()
            {
                point += 1
                let content = "You have gained 1 point. You now have \(point) point(s)."
            }
            else
            {
                let content = "No match. You have \(point) point(s)."
            }
        }
        else
        {
            let content = "Game Over. Your final score is.... \(point) point(s)."
        }
    }
}