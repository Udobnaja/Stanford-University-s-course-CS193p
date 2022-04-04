//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Anna Udobnaja on 31.01.2022.
//

import Foundation

struct MemoryGame<CardContent> {
  private(set) var cards: Array<Card>

  init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
    cards = Array<Card>()

    for index in 0..<numberOfPairsOfCards {
      let content = createCardContent(index)
      cards.append(Card(content: content))
      cards.append(Card(content: content))
    }
  }

  func choose(card: Card) {

  }

  struct Card {
    var isFaceUp: Bool = false
    var isMatched: Bool = false
    var content: CardContent
  }
}
