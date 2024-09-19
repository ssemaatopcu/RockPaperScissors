//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Sema Topcu on 9/19/24.
//

import UIKit

class ViewController: UIViewController {
    
    var computerChoice: Sign = .rock
    
    @IBOutlet var appSign: UILabel!
    @IBOutlet var gameStatus: UILabel!
    @IBOutlet var rockSign: UIButton!
    @IBOutlet var paperSign: UIButton!
    @IBOutlet var scissorsSign: UIButton!
    @IBOutlet var againButton: UIButton!
    
    @IBAction func again(_ sender: Any) {
        updateUI(for: .start)
    }
    @IBAction func playerRock(_ sender: Any) {
        playGame(playerChoice: .rock)
    }
    @IBAction func playerPaper(_ sender: Any) {
        playGame(playerChoice: .paper)
    }
    @IBAction func playerScissors(_ sender: Any) {
        playGame(playerChoice: .scissors)
    }
    
    func updateUI(for state: GameState) {
        gameStatus.text = state.message
        
        switch state {
        case .start:
            view.backgroundColor = UIColor.systemGray
            appSign.text = "🤖"
            againButton.isHidden = true
            
            rockSign.isHidden = false
            paperSign.isHidden = false
            scissorsSign.isHidden = false
            
            rockSign.isEnabled = true
            paperSign.isEnabled = true
            scissorsSign.isEnabled = true
        case .win:
            view.backgroundColor = UIColor.systemGreen
        case .lose:
            view.backgroundColor = UIColor.systemRed
        case .draw:
            view.backgroundColor = UIColor.systemYellow
        }
    }
        override func viewDidLoad() {
            super.viewDidLoad()
            updateUI(for: .start)
        }
    
    func playGame(playerChoice: Sign) {
        computerChoice = Sign.randomSign()
        appSign.text = "\(computerChoice)"
        let gameState = playerChoice.compare(opponent: computerChoice)
        updateUI(for: gameState)
        rockSign.isEnabled = false
               paperSign.isEnabled = false
               scissorsSign.isEnabled = false
               againButton.isHidden = false
           }
    }
