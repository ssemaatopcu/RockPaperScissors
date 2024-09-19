//
//  GameState.swift
//  RockPaperScissors
//
//  Created by Sema Topcu on 9/19/24.
//

import Foundation

enum GameState {
    case start
    case win
    case lose
    case draw
    
    var message: String {
        switch self {
        case .start:
            return "Rock, Paper, Scissors?"
        case .win:
            return "You Win!"
        case.lose:
            return "You Lose!"
        case .draw:
            return "It's Draw!"
        }
    }
}
