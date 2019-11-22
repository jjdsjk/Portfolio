//
//  Game.swift
//  ApplePie
//
//  Created by Jun Chen on 11/14/19.
//  Copyright © 2019 Jun Chen. All rights reserved.
//

import Foundation
struct Game{
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    mutating func playerGuessed(letter: Character){
        guessedLetters.append(letter)
        if !word.contains(letter){
            incorrectMovesRemaining -= 1
        }
    }
    var formattedWord: String{
        var guessedWord = ""
        var totalPoints = 0
        for letter in word {
            if guessedLetters.contains(letter){
                guessedWord += "\(letter)"
                totalPoints += 1
            }else{
                guessedWord += "_"
            }
        }
        return guessedWord
    }
}
