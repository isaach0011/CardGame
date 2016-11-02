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
    //internal var rank : Int
    internal var suit : String
    internal var color : UIColor
    internal var rank : Int

    override init()
    {
        suit = String()
        color = UIColor.redColor()
        rank = 0
        super.init()
    }
    
    init(withRank: Int, ofSuit:String)
    {
        color = UIColor.redColor()
        suit = ofSuit
        rank = withRank
        super.init()
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
    
    //The class modifier makes it so the method is visible without an instance
    //You would call it by ClassName.method()
    //In this case PlayingCard.validRanks()
    class func validRanks() -> [String]
    {
        return ["??","A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    
    class func maxRank() -> Int
    {
        return validRanks().count - 1
    }
    
    class func validSuits() -> [String]
    {
        return ["♦️","♣️","♥️","♠️"]
    }
}
