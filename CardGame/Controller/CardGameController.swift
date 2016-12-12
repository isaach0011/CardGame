//
//  CardGameController.swift
//  CardGame
//
//  Created by Hill, Isaac on 10/27/16.
//  Copyright © 2016 Hill, Isaac. All rights reserved.
//

import UIKit

class CardGameController : UIViewController
{
    fileprivate lazy var clickCount = Int()
    internal var point = Int()
    fileprivate var game = StupidGame()
    fileprivate var cardOne = String()
    fileprivate var cardTwo = String()
    
    
    @IBOutlet weak var pointName: UILabel!
    @IBOutlet weak var pointLabel: UILabel!
    
    @IBOutlet weak var cardButtonOne: UIButton!
    @IBOutlet weak var cardButtonTwo: UIButton!
    

    override func viewDidLoad() -> Void
    {

    }
    
    @IBAction func resetButton(_ sender: UIButton)
    {
        game.startGame()
        cardButtonOne.setTitle("Draw", for: UIControlState())
        cardButtonTwo.setTitle("Draw", for: UIControlState())
        point = 0
        pointLabel.text = "\(point)"
    }
    
    @IBAction func drawButton(_ sender: UIButton)
    {
        point += game.playGame()
        pointLabel.text = "\(point)"
        cardButtonOne.setTitle(game.getCardOne(), for: UIControlState())
        cardButtonTwo.setTitle(game.getCardTwo(), for: UIControlState())
    }
  
    
//    @IBAction func cardClick(sender: UIButton)
//    {
//        clickCount += 1
//        
//        let content = "You clicked \(clickCount) times!"
//        
//        if let currentCard = cardDeck.drawRandomCard() as? PlayingCard
//        {
//            cardButton.setTitle("\(currentCard.getCardData())", forState: UIControlState.Normal)
//        }
//        else
//        {
//            cardButton.setTitle("deck over", forState: UIControlState.Normal)
//            cardDeck = PlayingCardDeck()
//        }
//        
//        cardLabel.text = content
//    }
}
