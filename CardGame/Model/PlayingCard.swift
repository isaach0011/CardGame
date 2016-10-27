//
//  PlayingCard.swift
//  CardGame
//
//  Created by Hill, Isaac on 10/25/16.
//  Copyright © 2016 Hill, Isaac. All rights reserved.
//

import UIKit

class PlayingCard : Card
{
    //private var rank : Int
    private var suit : String
    {
        get
        {
            return self.suit
        }
        set(suit)
        {
            self.suit = suit
        }
    }
    private var color : UIColor
    {
        get
        {
            return self.color
        }
        set(color)
        {
            self.color = color
        }
    }
    private var rank : Int
    {
        get
        {
            return self.rank
        }
        set(rank)
        {
            self.rank = rank
        }
    }
    override init()
    {
        super.init()
        suit = String()
        color = UIColor()
        rank = 0
    }
    
    func getRank() -> Int {return rank}
    func getSuit() -> String {return suit}
    func getColor() -> UIColor {return color}
    
    override func toString() -> String
    {
        let backStatus : String
        if super.isFacing()
        {
            backStatus = " is face up"
        }
        else
        {
            backStatus = " is face down"
        }
        
        let description = "The playing card rank is: \(rank) and its suit is \(suit). It has a color of \(color) and \(backStatus)"
        
        return description
    }
}
