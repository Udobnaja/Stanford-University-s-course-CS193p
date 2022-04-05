//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Anna Udobnaja on 04.02.2022.
//

import Foundation

import SwiftUI

class EmojiMemoryGame: ObservableObject {
  @Published private var model = createMemoryGame()

  var cards:  Array<MemoryGame<String>.Card> {
    model.cards
  }
}

// MARK: Intent(s)

extension EmojiMemoryGame {
  func choose(_ card: MemoryGame<String>.Card) {
    model.choose(card)
  }

  func choose(_ tab: EmojiMemoryGame.Tab) {
    guard Self.currentTab != tab else {
      return
    }
    Self.currentTab = tab
    Self.setup()
    model.clear()
    model.update(
      numberOfPairsOfCards: Self.randomEmojisCount
    ) { index in
      Self.currentEmojisPreset?[index]
    }
  }
}

extension EmojiMemoryGame {
  enum Tab: String, CaseIterable {
    case cars = "Vehicles"
    case flags = "Flags"
    case eats = "Eats"

    var image: String {
      switch self {
      case .flags:
        return "flag"
      case .cars:
        return "car"
      case .eats:
        return "theatermasks"
      }
    }
  }
}

// MARK: static properties

extension EmojiMemoryGame {
  static var emojis: [Tab: [String]] = [
    .cars: [
      "🚘", "🚐", "🛵", "🚛", "🚗",
      "🚙", "🚑", "🏎", "🛺", "✈️",
      "🚖", "⛵️", "⛴", "🛥", "🚍",
      "🚆", "🚊", "🛴", "🚔", "🚄",
      "🛶", "🚁", "🛸", "🚠"
    ],
    .flags: [
      "🏳️‍🌈", "🇧🇾", "🇧🇪", "🇨🇴", "🇨🇻",
      "🇨🇫", "🇧🇬", "🇨🇮", "🇧🇸", "🇧🇶",
      "🇧🇧", "🇦🇴", "🏁", "🇨🇩", "🇨🇨",
      "🇮🇨", "🇦🇶", "🇦🇫", "🇦🇸", "🇦🇽"
    ],
    .eats: [
      "🍏", "🍎", "🍑", "🥩", "🥝",
      "🥖", "🥨", "🌮", "🥘", "🍆"
    ]
  ]

  static var currentTab: Tab = .cars

  static var currentEmojisPreset: [String]? { EmojiMemoryGame.emojis[currentTab] }
  static var randomEmojisCount: Int { Int.random(in: 4..<(currentEmojisPreset?.count ?? 4)) }

  static func setup() {
    EmojiMemoryGame.emojis[currentTab]?.shuffle()
  }

  static func createMemoryGame() -> MemoryGame<String> {
    setup()

    return MemoryGame<String>(
      numberOfPairsOfCards: randomEmojisCount
    ) { index in
      currentEmojisPreset?[index]
    }
  }
}
