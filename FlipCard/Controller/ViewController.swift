//
//  ViewController.swift
//  FlipCard
//
//  Created by admin on 9.08.23.
//

import UIKit

class ViewController: UIViewController {
    
    var flipsCount = 0 {
        didSet {
            flipsCountLabel.text = "Flips: \(flipsCount)"
        }
    }
    
    @IBOutlet weak var flipsCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["🌸", "🌺", "🌸", "🌺"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchButton(_ sender: UIButton) {
        flipsCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("Chosen card wasn't in cardButtons")
        }
        
        
        func flipCard (withEmoji emoji: String, on button: UIButton){
            if button.currentTitle == emoji {
                button.setTitle("", for: .normal)
                button.backgroundColor = #colorLiteral(red: 0, green: 0.5603182912, blue: 0, alpha: 1)
            } else {
                button.setTitle(emoji, for: .normal)
                button.backgroundColor = #colorLiteral(red: 0, green: 0.5603182912, blue: 0, alpha: 1)
            }
        }
        
        
    }
}
