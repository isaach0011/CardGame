//
//  PlayingCardDeck.swift
//  CardGame
//
//  Created by Hill, Isaac on 10/31/16.
//  Copyright © 2016 Hill, Isaac. All rights reserved.
//

import Foundation

class PlayingCardDeck : Deck
{
    
    override init()
    {
        super.init()
        
        for suit in PlayingCard.validSuits()
        {
            for rank in 1...PlayingCard.maxRank()
            {
                let tempCard = PlayingCard(withRank: rank, ofSuit: suit)
                cards.append(tempCard)
            }
        }
    }
    func orderDeck() -> Void
    {
        var temp = [PlayingCard]()
        for suit in PlayingCard.validSuits()
        {
            for rank in 1...PlayingCard.maxRank()
            {
                let index = cards.index(where:
                    {($0 as! PlayingCard).suit == suit && ($0 as! PlayingCard).rank == rank})
                let tempCard = cards.remove(at:index!) as! PlayingCard
                temp.append(tempCard)
            }
        }
        
        cards = temp
    }
}
