//
//  ViewController.swift
//  FlipCard
//
//  Created by admin on 9.08.23.
//

import UIKit

class ViewController: UIViewController {
    
    var flipsCount = 0
    
    @IBOutlet weak var flipsCountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchButton(_ sender: UIButton) {
        flipCard(withEmoji: "🌸", on: sender)
    }
    
    @IBAction func touchSecondButton(_ sender: UIButton) {
        flipCard(withEmoji: "🌹", on: sender)
    }
    
    func flipCard (withEmoji emoji: String, on button: UIButton){
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.1857388616, blue: 0.5733950138, alpha: 1)
        }
        flipsCount += 1
        flipsCountLabel.text = "Flips: \(flipsCount)"
    }
    
    
}
