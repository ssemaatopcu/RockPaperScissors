//
//  Sign.swift
//  RockPaperScissors
//
//  Created by Sema Topcu on 9/19/24.
//

import Foundation

    func randomSign() -> Sign {
        let sign = Int.random(in: 0...2)
        if sign == 0 {
            return .rock
        } else if sign == 1 {
            return .paper
        } else {
            return .scissors }
}

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
