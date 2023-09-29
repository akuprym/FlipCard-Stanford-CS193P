//
//  Concentration.swift
//  FlipCard
//
//  Created by admin on 29.08.23.
//

import Foundation

class Concentration {
    
    var cards = [Card]()
    var indexOfFaceUpCard: Int?
    
    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            if let matchIndex = indexOfFaceUpCard, matchIndex != index {
                // check if cards match
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfFaceUpCard = nil
            } else {
                // either no cards or 2 cards are face up
            }
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card(identifier: 0)
            cards += [card, card]
        }
        // TODO: Shuffle the cards
    }
    
}
