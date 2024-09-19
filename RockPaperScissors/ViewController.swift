//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Sema Topcu on 9/19/24.
//

import UIKit

class ViewController: UIViewController {

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
    }
    @IBAction func playerPaper(_ sender: Any) {
    }
    @IBAction func playerScissors(_ sender: Any) {
    }
    
    func updateUI(for state: GameState) {
        gameStatus.text = state.message
        
        switch state {
        case .start:
            view.backgroundColor = UIColor.systemGray
        case .win:
            view.backgroundColor = UIColor.systemGreen
        case .lose:
            view.backgroundColor = UIColor.systemRed
        case .draw:
            view.backgroundColor = UIColor.systemYellow
        }
        
        if state == .start {
            appSign.text = "🤖"
            againButton.isHidden = true
            
            rockSign.isHidden = false
            paperSign.isHidden = false
            scissorsSign.isHidden = false
            
            rockSign.isEnabled = true
            paperSign.isEnabled = true
            scissorsSign.isEnabled = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

