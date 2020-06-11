//
//  ContentView.swift
//  Stanford-CS193p-SwiftUI
//
//  Created by Moaz Ezz on 6/11/20.
//  Copyright © 2020 Moaz Ezz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var viweModel: EmojiMemoryGame
    var body: some View {
        return HStack{
            ForEach(viweModel.cards){card in
                CardView(card: card)
                    .onTapGesture {
                        self.viweModel.choose(card: card)
                }
            }
        
        }
        .padding()
        .foregroundColor(.orange)
        .font(.largeTitle)
    }
}



struct CardView: View {
    var card : MemoryGame<String>.Card
    var body: some View {
        ZStack{
            if card.isFaceUp{
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(lineWidth: 3)
                Text(card.content)
            }else{
                RoundedRectangle(cornerRadius: 10.0)
                .fill()
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viweModel: EmojiMemoryGame())
    }
}
