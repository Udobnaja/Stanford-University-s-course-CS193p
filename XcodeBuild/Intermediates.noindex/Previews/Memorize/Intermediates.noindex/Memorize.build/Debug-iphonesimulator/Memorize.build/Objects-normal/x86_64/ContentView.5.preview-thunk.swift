@_private(sourceFile: "ContentView.swift") import Memorize
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/udobnaja/study/stanford SwiftUI/Memorize/Memorize/ContentView.swift", line: 144)
      //ContentView().preferredColorScheme(.dark)
      __designTimeSelection(ContentView().preferredColorScheme(.light), "#783.[5].[0].property.[0].[0]")
    #sourceLocation()
    }
}

extension IconView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/udobnaja/study/stanford SwiftUI/Memorize/Memorize/ContentView.swift", line: 128)
    __designTimeSelection(Button {
      __designTimeSelection(onTap(__designTimeSelection(key, "#783.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value")), "#783.[4].[4].property.[0].[0].arg[0].value.[0]")
    }
    label: {
      __designTimeSelection(VStack {
        __designTimeSelection(Image(systemName: __designTimeSelection(image, "#783.[4].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value"))
          .font(.largeTitle), "#783.[4].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[0]")
        __designTimeSelection(Text(__designTimeSelection(text, "#783.[4].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[1].arg[0].value")), "#783.[4].[4].property.[0].[0].arg[1].value.[0].arg[0].value.[1]")
      }, "#783.[4].[4].property.[0].[0].arg[1].value.[0]")
    }, "#783.[4].[4].property.[0].[0]")
  #sourceLocation()
    }
}

extension CardView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/udobnaja/study/stanford SwiftUI/Memorize/Memorize/ContentView.swift", line: 106)
    __designTimeSelection(ZStack {
      let shape = RoundedRectangle(cornerRadius: __designTimeInteger("#783.[3].[2].property.[0].[0].arg[0].value.[0].value.arg[0].value", fallback: 20))
      if isFaceUp {
        __designTimeSelection(shape.fill().foregroundColor(.white), "#783.[3].[2].property.[0].[0].arg[0].value.[1].[0].[0]")
        __designTimeSelection(shape.strokeBorder(lineWidth: __designTimeInteger("#783.[3].[2].property.[0].[0].arg[0].value.[1].[0].[1].modifier[0].arg[0].value", fallback: 3)), "#783.[3].[2].property.[0].[0].arg[0].value.[1].[0].[1]")
        __designTimeSelection(Text(__designTimeSelection(content, "#783.[3].[2].property.[0].[0].arg[0].value.[1].[0].[2].arg[0].value")), "#783.[3].[2].property.[0].[0].arg[0].value.[1].[0].[2]")
      } else {
        __designTimeSelection(shape.fill(), "#783.[3].[2].property.[0].[0].arg[0].value.[1].[1].[0]")
      }

    }.onTapGesture {
      isFaceUp = !isFaceUp
    }, "#783.[3].[2].property.[0].[0]")
  #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/udobnaja/study/stanford SwiftUI/Memorize/Memorize/ContentView.swift", line: 62)
      __designTimeSelection(VStack {
        __designTimeSelection(Text(__designTimeString("#783.[2].[4].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Memorize!"))
          .font(.largeTitle), "#783.[2].[4].property.[0].[0].arg[0].value.[0]")
        __designTimeSelection(Spacer(), "#783.[2].[4].property.[0].[0].arg[0].value.[1]")
        __designTimeSelection(ScrollView {
          __designTimeSelection(LazyVGrid(columns: [__designTimeSelection(GridItem(.adaptive(minimum: __designTimeInteger("#783.[2].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.arg[0].value", fallback: 6))), "#783.[2].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0]")]) {
            if let emojis = emojis[currentKey] {
              __designTimeSelection(ForEach(__designTimeSelection(emojis[__designTimeInteger("#783.[2].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].value.[0]", fallback: 0)..<emojiCount], "#783.[2].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value"), id: \.self) {
                __designTimeSelection(CardView(content: __designTimeSelection($0, "#783.[2].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[2].value.[0].arg[0].value")).aspectRatio(__designTimeInteger("#783.[2].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[2].value.[0].modifier[0].arg[0].value.[0]", fallback: 2)/__designTimeInteger("#783.[2].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[2].value.[0].modifier[0].arg[0].value.[1]", fallback: 3), contentMode: .fit), "#783.[2].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[2].value.[0]")
              }, "#783.[2].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].[0].[0]")
            }
          }, "#783.[2].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0]")
        }.foregroundColor(.red), "#783.[2].[4].property.[0].[0].arg[0].value.[2]")

        __designTimeSelection(Spacer(), "#783.[2].[4].property.[0].[0].arg[0].value.[3]")

        __designTimeSelection(HStack {
//          let keys = emojis.map{ $0.key }
//          ForEach(keys.indices) {
//            Spacer()
//            IconView(image: keys[$0].image, text: keys[$0].rawValue, key: keys[$0], onTap: changeEmojis)
//            Spacer()
//          }

          __designTimeSelection(IconView(image: __designTimeString("#783.[2].[4].property.[0].[0].arg[0].value.[4].arg[0].value.[0].arg[0].value", fallback: "car"), text: __designTimeString("#783.[2].[4].property.[0].[0].arg[0].value.[4].arg[0].value.[0].arg[1].value", fallback: "Vehicles"), key: .cars, onTap: __designTimeSelection(changeEmojis, "#783.[2].[4].property.[0].[0].arg[0].value.[4].arg[0].value.[0].arg[3].value")), "#783.[2].[4].property.[0].[0].arg[0].value.[4].arg[0].value.[0]")
          __designTimeSelection(Spacer(), "#783.[2].[4].property.[0].[0].arg[0].value.[4].arg[0].value.[1]")
          __designTimeSelection(IconView(image: __designTimeString("#783.[2].[4].property.[0].[0].arg[0].value.[4].arg[0].value.[2].arg[0].value", fallback: "flag"), text: __designTimeString("#783.[2].[4].property.[0].[0].arg[0].value.[4].arg[0].value.[2].arg[1].value", fallback: "Flags"), key: .flags, onTap: __designTimeSelection(changeEmojis, "#783.[2].[4].property.[0].[0].arg[0].value.[4].arg[0].value.[2].arg[3].value")), "#783.[2].[4].property.[0].[0].arg[0].value.[4].arg[0].value.[2]")
          __designTimeSelection(Spacer(), "#783.[2].[4].property.[0].[0].arg[0].value.[4].arg[0].value.[3]")
          __designTimeSelection(IconView(image: __designTimeString("#783.[2].[4].property.[0].[0].arg[0].value.[4].arg[0].value.[4].arg[0].value", fallback: "theatermasks"), text: __designTimeString("#783.[2].[4].property.[0].[0].arg[0].value.[4].arg[0].value.[4].arg[1].value", fallback: "Eats"), key: .eats, onTap: __designTimeSelection(changeEmojis, "#783.[2].[4].property.[0].[0].arg[0].value.[4].arg[0].value.[4].arg[3].value")), "#783.[2].[4].property.[0].[0].arg[0].value.[4].arg[0].value.[4]")
        }
        .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/), "#783.[2].[4].property.[0].[0].arg[0].value.[4]")

      }
      .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/), "#783.[2].[4].property.[0].[0]")
  #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: changeEmojis(key:)) private func __preview__changeEmojis(key: EmojiKey) {
        #sourceLocation(file: "/Users/udobnaja/study/stanford SwiftUI/Memorize/Memorize/ContentView.swift", line: 53)
    if var emojis = emojis[key] {
      __designTimeSelection(emojis.shuffle(), "#783.[2].[3].[0].[0].[0]")
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