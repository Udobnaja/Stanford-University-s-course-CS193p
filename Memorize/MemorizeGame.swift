//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Anna Udobnaja on 31.01.2022.
//

import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable{
  private(set) var cards: Array<Card>

  private var faceUpCardIndex: Int?

  init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent?) {
    cards = Array<Card>()

    update(numberOfPairsOfCards: numberOfPairsOfCards, createCardContent: createCardContent)
  }

  mutating func clear() {
    cards = Array<Card>()
  }

  mutating func update(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent?) {
    for index in 0..<numberOfPairsOfCards {
      guard let content = createCardContent(index) else {
        return
      }
      cards.append(Card(id: UUID(), content: content))
      cards.append(Card(id: UUID(), content: content))
    }
  }

  mutating func choose(_ card: Card) {
    guard let chosenIndex = cards.firstIndex(where: { $0.id == card.id }),
        !cards[chosenIndex].isFaceUp, !cards[chosenIndex].isMatched else {
      return
    }

    if let potentialMatchIndex = faceUpCardIndex {
      if cards[chosenIndex].content == cards[potentialMatchIndex].content {
        cards[chosenIndex].isMatched = true
        cards[potentialMatchIndex].isMatched = true
      }

      faceUpCardIndex = nil
    } else {
      for index in cards.indices {
        cards[index].isFaceUp = false
      }
      faceUpCardIndex = chosenIndex
    }
    cards[chosenIndex].isFaceUp.toggle()
  }

  struct Card: Identifiable {
    var id: UUID
    var isFaceUp: Bool = false
    var isMatched: Bool = false
    var content: CardContent
  }
}
