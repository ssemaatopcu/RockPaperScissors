//
//  Sign.swift
//  RockPaperScissors
//
//  Created by Sema Topcu on 9/19/24.
//

import Foundation

enum Sign {
    case rock
    case paper
    case scissors
    
    func compare(opponent: Sign) -> GameState {
        switch (self, opponent) {
                case (.rock, .scissors), (.scissors, .paper), (.paper, .rock):
                    return .win
                case (.rock, .paper), (.scissors, .rock), (.paper, .scissors):
                    return .lose
                default:
                    return .draw
                }
    }
}
