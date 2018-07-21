//
//  ViewController.swift
//  Apple Pie
//
//  Created by Jeffrey Tong on 4/22/2018.
//  Copyright © 2018 MDDSP. All rights reserved.
//

import Foundation

struct Game {

    var word: [String];
    var incorrectMovesRemaining: Int;
    var guessedLetters: [Character];
    var gained: Int = 0;
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter);
        if !word[0].characters.contains(letter) {
            incorrectMovesRemaining -= 1;
        }
    }
    
    var formattedWord: String {
        var guessedWord = "";
        for letter in word[0].characters {
            if guessedLetters.contains((letter)) {
                guessedWord += "\(letter)";
                self.gained = 1;
            } else {
                guessedWord += "_";
                self.gained = 0;
            }
        }
        return guessedWord;
    }
    
}
