//
//  Card.swift
//  FlipCard
//
//  Created by admin on 29.08.23.
//

import Foundation

struct Card {

    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init(identifier: Int) {
        self.identifier = identifier
    }
}
