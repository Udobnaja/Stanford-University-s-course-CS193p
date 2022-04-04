//
//  ContentView.swift
//  Memorize
//
//  Created by Anna Udobnaja on 14.01.2022.
//

import SwiftUI

enum EmojiKey: String {
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

struct ContentView: View {
  @State  var emojis: [EmojiKey: [String]] = [
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

  @State var currentKey: EmojiKey = .cars

  @State var emojiCount = 8

  func changeEmojis(key: EmojiKey) {
    if var emojis = emojis[key] {
      emojis.shuffle()
      emojiCount = Int.random(in: 4..<emojis.count)
    }

    currentKey = key
  }

  var body: some View {
      VStack {
        Text("Memorize!")
          .font(.largeTitle)
        Spacer()
        ScrollView {
          LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
            if let emojis = emojis[currentKey] {
              ForEach(emojis[0..<emojiCount], id: \.self) {
                CardView(content: $0).aspectRatio(2/3, contentMode: .fit)
              }
            }
          }
        }.foregroundColor(.red)

        Spacer()

        HStack {
          IconView(image: "car", text: "Vehicles", key: .cars, onTap: changeEmojis)
          Spacer()
          IconView(image: "flag", text: "Flags", key: .flags, onTap: changeEmojis)
          Spacer()
          IconView(image: "theatermasks", text: "Eats", key: .eats, onTap: changeEmojis)
        }
        .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)

      }
      .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
  }

}

struct CardView: View {
  var content: String

  // pointer to value bool in memory and rebuild the view
  @State var isFaceUp = true
  var body: some View {
    ZStack {
      let shape = RoundedRectangle(cornerRadius: 20)
      if isFaceUp {
        shape.fill().foregroundColor(.white)
        shape.strokeBorder(lineWidth: 3)
        Text(content)
      } else {
        shape.fill()
      }

    }.onTapGesture {
      isFaceUp = !isFaceUp
    }
  }
}

struct IconView: View {
  let image: String
  let text: String
  let key: EmojiKey
  let onTap: (_: EmojiKey) -> Void
  var body: some View {
    Button {
      onTap(key)
    }
    label: {
      VStack {
        Image(systemName: image)
          .font(.largeTitle)
        Text(text)
      }
    }
  }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      //ContentView().preferredColorScheme(.dark)
      ContentView().preferredColorScheme(.light)
    }
}
