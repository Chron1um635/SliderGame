//
//  SliderGameApp.swift
//  SliderGame
//
//  Created by Максим Назаров on 14.10.2024.
//

import SwiftUI

@main
struct SliderGameApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(contentViewVM: ContentViewViewModel())
        }
    }
}
