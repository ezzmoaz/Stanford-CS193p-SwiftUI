//
//  EmojiMemoryGame.swift
//  Stanford-CS193p-SwiftUI
//
//  Created by Moaz Ezz on 6/11/20.
//  Copyright © 2020 Moaz Ezz. All rights reserved.
//

import Foundation


class EmojiMemoryGame {
    private var model : MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    
    
    static func createMemoryGame() -> MemoryGame<String>{
        let emojiArray = ["😀","👻","🥰"]
        return MemoryGame<String>(numberOfPairsOfCards: emojiArray.count) { (pairIndex) -> String in
            return emojiArray[pairIndex]
        }
    }
    
    


    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card:MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
