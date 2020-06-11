//
//  ContentView.swift
//  Stanford-CS193p-SwiftUI
//
//  Created by Moaz Ezz on 6/11/20.
//  Copyright © 2020 Moaz Ezz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return HStack{
            ForEach(0..<4){index in
                CardView(isFaceUp: false)
            }
        
        }
        .padding()
        .foregroundColor(.orange)
        .font(.largeTitle)
    }
}



struct CardView: View {
    var isFaceUp :Bool
    var body: some View {
        ZStack{
            if isFaceUp{
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(lineWidth: 3)
                Text("👻")
            }else{
                RoundedRectangle(cornerRadius: 10.0)
                .fill()
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
