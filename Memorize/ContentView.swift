//
//  ContentView.swift
//  Memorize
//
//  Created by Anna Udobnaja on 14.01.2022.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var viewModel: EmojiMemoryGame

  var body: some View {
      VStack {
        Text("Memorize!")
          .font(.largeTitle)
        Spacer()
        ScrollView {
          LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
            ForEach(viewModel.cards) { card in
              CardView(card: card)
                .aspectRatio(2/3, contentMode: .fit)
                .onTapGesture {
                  viewModel.choose(card)
                }
            }
          }
        }.foregroundColor(.red)

        Spacer()

        HStack {
          ForEach(EmojiMemoryGame.Tab.allCases, id: \.self) { tab in
            Spacer()
            IconView(source: tab) { tab in
              viewModel.choose(tab)
            }
            Spacer()
          }
        }
        .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
      }
      .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
  }
}

struct CardView: View {
  var card: MemoryGame<String>.Card

  var body: some View {
    ZStack {
      let shape = RoundedRectangle(cornerRadius: 20)
      if card.isFaceUp {
        shape.fill().foregroundColor(.white)
        shape.strokeBorder(lineWidth: 3)
        Text(card.content)
      } else if card.isMatched {
        shape.opacity(0)
      } else {
        shape.fill()
      }
    }
  }
}

struct IconView: View {
  var source: EmojiMemoryGame.Tab
  let onTap: (_: EmojiMemoryGame.Tab) -> Void
  var body: some View {
    Button {
      onTap(source)
    }
    label: {
      VStack {
        Image(systemName: source.image)
          .font(.largeTitle)
        Text(source.rawValue)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      //ContentView().preferredColorScheme(.dark)
      ContentView(viewModel: EmojiMemoryGame()).preferredColorScheme(.light)
    }
}
