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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchButton(_ sender: UIButton) {
        flipsCount += 1
    }
    
   
    func flipCard (withEmoji emoji: String, on button: UIButton){
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
    
}
