//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Anna Udobnaja on 14.01.2022.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
