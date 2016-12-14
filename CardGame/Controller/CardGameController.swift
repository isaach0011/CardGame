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
    var timer: Timer!
    var countdown: Int = 0
    var previousPoints = 0
    var k = 1
    
    
    @IBOutlet weak var pointName: UILabel!
    @IBOutlet weak var pointLabel: UILabel!
    
    @IBOutlet weak var cardButtonOne: UIButton!
    @IBOutlet weak var cardButtonTwo: UIButton!
    

    override func viewDidLoad() -> Void
    {
        self.countdown = 5
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: (#selector(CardGameController.updateCountdown)), userInfo: nil, repeats: true)
    }
    
    @IBAction func resetButton(_ sender: UIButton)
    {
        //Resets the entire game.
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
  
    @IBAction func autoButton(_ sender: UIButton)
    {
       var previousPoints = 0
       var k = 1
       
        while k == 1
        {
            point += game.playGame()
            pointLabel.text = "\(point)"
            print(point)
            cardButtonOne.setTitle(game.getCardOne(), for: UIControlState())
            cardButtonTwo.setTitle(game.getCardTwo(), for: UIControlState())
            print("About to sleep")
            sleep(1)
            print("Sleepy")
            if point == 52
            {
                k = 0
                cardButtonOne.setTitle("Max Achieved", for: UIControlState())
                cardButtonTwo.setTitle("Max Achieved", for: UIControlState())
            }
            else if previousPoints < point
            {
               previousPoints = point
            }
            else
            {
                //Resets points and decks.
                game.startGame()
                cardButtonOne.setTitle("Draw", for: UIControlState())
                cardButtonTwo.setTitle("Draw", for: UIControlState())
                point = 0
                pointLabel.text = "\(point)"
            }
        
            self.view.setNeedsDisplay()
        }
    }
    
    func updateCountdown()
    {
        print("Time until launch \(self.countdown)")
        
        self.countdown -= 1
        
        if self.countdown == 0
        {
            self.timer.invalidate()
            self.timer = nil
        }
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
