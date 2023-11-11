//
//  Card.swift
//  FlipCard
//
//  Created by admin on 29.08.23.
//

import Foundation

struct Card: Hashable {
    

    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
