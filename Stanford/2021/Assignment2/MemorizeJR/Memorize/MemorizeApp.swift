//
//  MemorizeApp.swift
//  Memorize
//
//  Created by jrasmusson on 2022-03-27.
//

import SwiftUI

let themeData = [
    Theme(name: "Halloween", emojis: ["💀", "👻", "🎃"],
          numberOfPairs: 3, color: .systemOrange),
    Theme(name: "Vehicles", emojis: ["🚗", "🚕", "🚙", "🚌", "🚎", "🏎", "🚡", "🚜", "🛴", "✈️"],
          numberOfPairs: 8, color: .systemRed),
    Theme(name: "Fruit", emojis: ["🍏", "🍎", "🍐", "🍊", "🍌", "🍉", "🍇", "🍓", "🫐"],
          numberOfPairs: 6, color: .systemGreen),
    Theme(name: "Flags", emojis: ["🏴‍☠️", "🚩", "🏁", "🏳️‍🌈", "🇦🇽", "🇦🇺", "🇦🇹", "🇹🇩"],
          numberOfPairs: 5, color: .systemOrange),
]

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()

    var body: some Scene {
        WindowGroup {
//            GameView(viewModel: game)
            ThemeView(themes: themeData)
        }
    }
}


