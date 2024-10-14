//
//  ContentViewViewModel.swift
//  SliderGame
//
//  Created by Максим Назаров on 14.10.2024.
//

import Foundation


@Observable
final class ContentViewViewModel {
    var game = Game()
    var isActive = false
    
    var score: Int {
        100 - abs(game.targetValue - lround(game.currentValue))
    }
    
    var alpha: Double {
        Double(score) / 100
    }
    
    func showAlert() {
        isActive.toggle()
    }
    
    func reset() {
        game.targetValue = Int.random(in: 0...100)
        game.currentValue = Double.random(in: 0...100)
    }
}
