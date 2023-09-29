//
//  Concentration.swift
//  FlipCard
//
//  Created by admin on 29.08.23.
//

import Foundation

class Concentration {
    
    var cards = [Card]()
    
    func chooseCard(at index: Int) {
       
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card(identifier: 0)
            cards += [card, card]
        }
        // TODO: Shuffle the cards
    }
    
}
