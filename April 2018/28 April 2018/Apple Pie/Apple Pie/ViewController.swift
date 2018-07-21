//
//  ViewController.swift
//  aipad
//
//  Created by Jeffrey Tong on 4/22/2018.
//  Copyright © 2018 MDDSP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Outlets
    
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    @IBOutlet weak var moneyLabel: UILabel!
    
    // Variables
    
    var listOfWords = [
        ["manifest destiny", "Gotta get to the west quiiiiccccklllllyyyy"],
        ["annex", "To add as territory"],
        ["dictator", "A ruler who does not share power"],
        ["diplomacy", ""],
        ["old three-hundred", ""],
        ["stephen austin", ""],
        ["sam houston", ""],
        ["davy crockett", ""],
        ["divine", ""],
        ["mexican-american war", ""],
        ["territory", ""],
        ["republic", ""],
        ["texan independence war", ""],
        ["forty niners", ""],
        ["legacy", ""],
        ["lewis and clark expedition", ""],
        ["mormons", ""],
        ["oregon trail", ""],
        ["santa fe trail", ""],
        ["persecution", ""],
        ["prospect", ""],
        ["rancho", ""],
        ["irrigation", ""],
        ["tradition", ""],
        ["james k polk", ""],
        ["zachary taylor", ""],
        ["millard fillmore", ""],
        ["californios", ""],
        ["santa anna", ""],
        ["the alamo", ""],
        ["tejanos", ""],
        ["goliad", ""],
        ["chinese", ""],
        ["fifty four forty", ""],
        ["missouri river", ""],
        ["rocky mountains", ""],
        ["oklahoma", ""],
        ["brigham young", ""],
        ["joseph smith", ""],
        ["utah", ""],
        ["salt lake city", ""],
        ["watcher", ""],
        ["holy book", ""]
    ];
    
    let incorrectMovesAllowed = 7;
    var money = 10;
    
    var totalWins = 0 {
        didSet {
            newRound()
        }
    }
    
    var totalLosses = 0 {
        didSet {
            newRound()
        }
    }
    
    var currentGame: Game!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.title(for: .normal)!
        switch letterString {
            case "+1  ($2)":
                if money >= 2 {
                    currentGame.incorrectMovesRemaining += 1;
                    money -= 2;
                }
            break;
            case "Restore s ($10)":
                if money >= 10 {
                    currentGame.incorrectMovesRemaining = 7;
                    money -= 10;
                }
            break;
            case "Hint ($5)":
                if money >= 5 {
                    scoreLabel.text = currentGame.word[1];
                    money -= 5;
                }
            break;
            default:
                currentGame.playerGuessed(letter: Character(letterString.lowercased()));
        }
        updateGameState()
    }
    
    // Load the view and initialize the game
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    
    func newRound() {
        if !listOfWords.isEmpty {
            let newWord = listOfWords.removeFirst()
            currentGame = Game(
                word: newWord,
                incorrectMovesRemaining: incorrectMovesAllowed,
                guessedLetters: [],
                gained: 0
            )
            for button in letterButtons {
                button.isEnabled = true;
            }
            currentGame.playerGuessed(letter: " ")
            currentGame.playerGuessed(letter: "-")
            updateUI()
        } else {
            for button in letterButtons {
                button.isEnabled = false;
            }
        }

    }
    
    func updateUI() {
        var letters = [String]();
        money += currentGame.gained;
        for letter in currentGame.formattedWord {
            letters.append(String(letter));
        }
        moneyLabel.text = "You have $" + String(money);
        let wordWithSpacing = letters.joined(separator: " ")
        correctWordLabel.text = wordWithSpacing
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
    func updateGameState() {
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1;
        } else if currentGame.word[0] == currentGame.formattedWord {
            totalWins += 1;
        } else {
            updateUI();
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

