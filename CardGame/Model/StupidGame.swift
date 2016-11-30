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
    private var cardOne = String()
    private var cardTwo = String()

    init()
    {
        gameDeckOne = PlayingCardDeck()
        gameDeckTwo = PlayingCardDeck()
        gameCardOne = PlayingCard()
        gameCardTwo = PlayingCard()
        point = 0
        cardOne = ""
        cardTwo = ""
    }
    
    func startGame() -> Void
    {
        gameDeckOne = PlayingCardDeck()
        gameDeckTwo = PlayingCardDeck()
        gameDeckOne.shuffleDeck()
        gameDeckTwo.shuffleDeck()
        
    }
    
    func playGame() -> Void
    {
        if let gameCardOne = gameDeckOne.drawRandomCard() as? PlayingCard
        {
            if let gameCardTwo = gameDeckTwo.drawRandomCard() as? PlayingCard
            {
            
            
                cardOne = "\(gameCardOne.getCardData())"
                cardTwo = "\(gameCardTwo.getCardData())"
            
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
        }
        else
        {
            let content = "Game Over. Your final score is.... \(point) point(s)."
        }
    }
}