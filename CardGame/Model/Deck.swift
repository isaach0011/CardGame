//
//  Deck.swift
//  CardGame
//
//  Created by Hill, Isaac on 10/31/16.
//  Copyright © 2016 Hill, Isaac. All rights reserved.
//

import Foundation

class Deck
{
    internal lazy var cards = [Card] ()
    
    func shuffleDeck() -> Void
    {
        //Create a temp variable to hold Cards.
        var tempDeck = [Card]()
        
        //Repeat until cards data member is empty
        while self.cards.count > 0
        {
            //Get a random number between 0....cards.count-1
            let randomIndex = Int (arc4random() % (UInt32)(cards.count))
            
            //Remove the card at that index from the deck.
            let removedCard = cards.removeAtIndex(randomIndex)
            
            //Place that card in temporary array.
            tempDeck.append(removedCard)
        }
        
        //Replace the data member with the updated data.
        self.cards = tempDeck
    }
    
    func cutDeck() -> Void
    {
        
    }
    
    func drawCard() -> Card!
    {
        if cards.count > 0
        {
            return cards.removeAtIndex(0)
        }
        else
        {
            return nil
        }
    }
    
    func drawRandomCard() -> Card!
    {
        if cards.count > 0
        {
            let randomIndex = Int (arc4random() % (UInt32)(cards.count))
            return cards.removeAtIndex(randomIndex)
        }
        else
        {
            return nil
        }
    }
}
