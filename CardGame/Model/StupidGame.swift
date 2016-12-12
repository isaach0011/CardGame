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
    fileprivate var cardOne = String()
    fileprivate var cardTwo = String()

    init()
    {
        gameDeckOne = PlayingCardDeck()
        gameDeckTwo = PlayingCardDeck()
        gameCardOne = PlayingCard()
        gameCardTwo = PlayingCard()
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
    
    func playGame() -> Int
    {
        var points = 0
        if let gameCardOne = gameDeckOne.drawRandomCard() as? PlayingCard
        {
            if let gameCardTwo = gameDeckTwo.drawRandomCard() as? PlayingCard
            {
                cardOne = "\(gameCardOne.getCardData())"
                cardTwo = "\(gameCardTwo.getCardData())"
            
                if gameCardOne.getRank() == gameCardTwo.getRank()
                {
                    points += 1
                }

            }
        }
        else
        {
            cardOne = "Deck Over"
            cardTwo = "Deck Over"
 
        }
        return points
    }
    
    func getCardOne() -> String
    {
        return cardOne
    }
    
    func getCardTwo() -> String
    {
        return cardTwo
    }
}
