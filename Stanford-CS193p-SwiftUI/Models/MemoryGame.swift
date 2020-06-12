//
//  MemoryGame.swift
//  Stanford-CS193p-SwiftUI
//
//  Created by Moaz Ezz on 6/11/20.
//  Copyright © 2020 Moaz Ezz. All rights reserved.
//

import Foundation

struct MemoryGame<GameContent> {
    var cards : Array<Card>
    
    init(numberOfPairsOfCards: Int, cardContentFactory : (Int) -> GameContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards{
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
        cards.shuffle()
    }
    
    func choose(card:Card){
        print("card chosen: \(card)")
    }
    
    struct Card : Identifiable{
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: GameContent
        var id: Int
    }
}
