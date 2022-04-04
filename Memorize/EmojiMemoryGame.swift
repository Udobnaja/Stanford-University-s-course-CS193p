//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Anna Udobnaja on 04.02.2022.
//

import Foundation

import SwiftUI

class EmojiMemoryGame {
  private var model = createMemoryGame()

  var cards:  Array<MemoryGame<String>.Card> {
    model.cards
  }
}

// MARK: static properties

extension EmojiMemoryGame {
  static let emojis = [
    "🚘", "🚐", "🛵", "🚛", "🚗",
    "🚙", "🚑", "🏎", "🛺", "✈️",
    "🚖", "⛵️", "⛴", "🛥", "🚍",
    "🚆", "🚊", "🛴", "🚔", "🚄",
    "🛶", "🚁", "🛸", "🚠"
  ]

  static func createMemoryGame() -> MemoryGame<String> {
    MemoryGame<String>(
      numberOfPairsOfCards: 4
    ) { index in
      EmojiMemoryGame.emojis[index]
    }
  }
}
