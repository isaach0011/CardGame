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
    private lazy var clickCount = Int()
    internal var point = Int()
    private var game = StupidGame()
    private var cardOne = String()
    private var cardTwo = String()
    
    
    @IBOutlet weak var pointName: UILabel!
    @IBOutlet weak var pointLabel: UILabel!
    
    @IBOutlet weak var cardButtonOne: UIButton!
    @IBOutlet weak var cardButtonTwo: UIButton!
    

    override func viewDidLoad() -> Void
    {

    }
    
    @IBAction func resetButton(sender: UIButton)
    {
        game.startGame()
        cardButtonOne.setTitle("Draw", forState: UIControlState.Normal)
        cardButtonTwo.setTitle("Draw", forState: UIControlState.Normal)
        point = 0
        pointLabel.text = "\(point)"
    }
    
    @IBAction func drawButton(sender: UIButton)
    {
        point += game.playGame()
        pointLabel.text = "\(point)"
        cardButtonOne.setTitle(game.getCardOne(), forState: UIControlState.Normal)
        cardButtonTwo.setTitle(game.getCardTwo(), forState: UIControlState.Normal)
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
