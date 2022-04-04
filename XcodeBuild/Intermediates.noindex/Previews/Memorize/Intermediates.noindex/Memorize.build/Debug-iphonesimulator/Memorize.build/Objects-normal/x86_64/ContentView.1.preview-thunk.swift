@_private(sourceFile: "ContentView.swift") import Memorize
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/udobnaja/study/stanford SwiftUI/Memorize/Memorize/ContentView.swift", line: 144)
      //ContentView().preferredColorScheme(.dark)
      ContentView().preferredColorScheme(.light)
    #sourceLocation()
    }
}

extension IconView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/udobnaja/study/stanford SwiftUI/Memorize/Memorize/ContentView.swift", line: 128)
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
  #sourceLocation()
    }
}

extension CardView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/udobnaja/study/stanford SwiftUI/Memorize/Memorize/ContentView.swift", line: 106)
    ZStack {
      let shape = RoundedRectangle(cornerRadius: __designTimeInteger("#783.[3].[2].property.[0].[0].arg[0].value.[0].value.arg[0].value", fallback: 20))
      if isFaceUp {
        shape.fill().foregroundColor(.white)
        shape.strokeBorder(lineWidth: __designTimeInteger("#783.[3].[2].property.[0].[0].arg[0].value.[1].[0].[1].modifier[0].arg[0].value", fallback: 3))
        Text(content)
      } else {
        shape.fill()
      }

    }.onTapGesture {
      isFaceUp = !isFaceUp
    }
  #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/udobnaja/study/stanford SwiftUI/Memorize/Memorize/ContentView.swift", line: 62)
      VStack {
        Text(__designTimeString("#783.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Memorize!"))
          .font(.largeTitle)
        Spacer()
        ScrollView {
          LazyVGrid(columns: [GridItem(.adaptive(minimum: __designTimeInteger("#783.[2].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.arg[0].value", fallback: 6)))]) {
            if let emojis = emojis[currentKey] {
              ForEach(emojis[__designTimeInteger("#783.[2].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].value.[0]", fallback: 0)..<emojiCount], id: \.self) {
                CardView(content: $0).aspectRatio(__designTimeInteger("#783.[2].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[2].value.[0].modifier[0].arg[0].value.[0]", fallback: 2)/__designTimeInteger("#783.[2].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[2].value.[0].modifier[0].arg[0].value.[1]", fallback: 3), contentMode: .fit)
              }
            }
          }
        }.foregroundColor(.red)

        Spacer()

        HStack {
//          let keys = emojis.map{ $0.key }
//          ForEach(keys.indices) {
//            Spacer()
//            IconView(image: keys[$0].image, text: keys[$0].rawValue, key: keys[$0], onTap: changeEmojis)
//            Spacer()
//          }

          IconView(image: __designTimeString("#783.[2].[4].property.[0].[0].arg[0].value.[4].arg[0].value.[0].arg[0].value", fallback: "car"), text: __designTimeString("#783.[2].[4].property.[0].[0].arg[0].value.[4].arg[0].value.[0].arg[1].value", fallback: "Vehicles"), key: .cars, onTap: changeEmojis)
          Spacer()
          IconView(image: __designTimeString("#783.[2].[4].property.[0].[0].arg[0].value.[4].arg[0].value.[2].arg[0].value", fallback: "flag"), text: __designTimeString("#783.[2].[4].property.[0].[0].arg[0].value.[4].arg[0].value.[2].arg[1].value", fallback: "Flags"), key: .flags, onTap: changeEmojis)
          Spacer()
          IconView(image: __designTimeString("#783.[2].[4].property.[0].[0].arg[0].value.[4].arg[0].value.[4].arg[0].value", fallback: "theatermasks"), text: __designTimeString("#783.[2].[4].property.[0].[0].arg[0].value.[4].arg[0].value.[4].arg[1].value", fallback: "Eats"), key: .eats, onTap: changeEmojis)
        }
        .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)

      }
      .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
  #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: changeEmojis(key:)) private func __preview__changeEmojis(key: EmojiKey) {
        #sourceLocation(file: "/Users/udobnaja/study/stanford SwiftUI/Memorize/Memorize/ContentView.swift", line: 53)
    if var emojis = emojis[key] {
      emojis.shuffle()
      emojiCount = Int.random(in: __designTimeInteger("#783.[2].[3].[0].[0].[1].[0]", fallback: 4)..<emojis.count)
    }

    currentKey = key
  #sourceLocation()
    }
}

extension EmojiKey {
    @_dynamicReplacement(for: image) private var __preview__image: String {
        #sourceLocation(file: "/Users/udobnaja/study/stanford SwiftUI/Memorize/Memorize/ContentView.swift", line: 16)
    switch self {
    case .flags:
      return __designTimeString("#783.[1].[3].property.[0].[0].[0].[0]", fallback: "flag")
    case .cars:
      return __designTimeString("#783.[1].[3].property.[0].[0].[1].[0]", fallback: "car")
    case .eats:
      return __designTimeString("#783.[1].[3].property.[0].[0].[2].[0]", fallback: "theatermasks")
    }
  #sourceLocation()
    }
}

import enum Memorize.EmojiKey
import struct Memorize.ContentView
import struct Memorize.CardView
import struct Memorize.IconView
import struct Memorize.ContentView_Previews