//
//  ViewController.swift
//  aipad
//
//  Created by Jeffrey Tong on 4/22/2018.
//  Copyright © 2018 MDDSP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var treeImageView: UIImageView!
    
    @IBOutlet weak var correctWordLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet var letterButtons: [UIButton]!
    
    // MARK: Variables
    
    var listOfWords = [
        "manifest destiny",
        "annex",
        "dictator",
        "diplomacy",
        "old three-hundred",
        "sam houston",
        "divine",
        "mexican-american war",
        "territory",
        "republic",
        "texan independence war",
        "forty niners",
        "legacy",
        "lewis and clark expedition",
        "mormons",
        "oregon trail",
        "santa fe trail",
        "persecution",
        "prospect",
        "rancho",
        "irrigation",
        "tradition",
        "james k polk",
        "zachary taylor",
        "millard fillmore",
        "californios",
        "santa anna",
        "the alamo",
        "tejanos",
        "goliad",
        "chinese",
        "fifty four forty",
        "missouri river",
        "rocky mountains",
        "oklahoma",
        "brigham young",
        "joseph smith",
        "utah",
        "salt lake city",
        "watcher",
        "holy book"
    ];
    
    let incorrectMovesAllowed = 7
    
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
    
    var currentGame: Game! // it's ok for this property not to have a value for a short period
    
    // MARK: IBActions
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.title(for: .normal)!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
    
        updateGameState()
    }
    
    // MARK: Methods
    
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
                guessedLetters: []
            )
            enableLetterButtons(true)
            currentGame.playerGuessed(letter: " ")
            currentGame.playerGuessed(letter: "-")
            updateUI()
        } else {
            enableLetterButtons(false)
        }

    }
    
    func enableLetterButtons(_ enable: Bool) {
        for button in letterButtons {
            button.isEnabled = enable
        }
    }
    
    func updateUI() {
        var letters = [String]()
        for letter in currentGame.formattedWord {
            letters.append(String(letter))
        }
        let wordWithSpacing = letters.joined(separator: " ")
        correctWordLabel.text = wordWithSpacing
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
    func updateGameState() {
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1
        } else if currentGame.word == currentGame.formattedWord {
            totalWins += 1
        } else {
            updateUI()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

