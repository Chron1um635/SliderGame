//
//  ContentView.swift
//  SliderGame
//
//  Created by Максим Назаров on 14.10.2024.
//

import SwiftUI

struct ContentView: View {
    
    @Bindable var contentViewVM: ContentViewViewModel
    
    var body: some View {
        VStack {
            GameView(
                target: $contentViewVM.game.targetValue,
                value: $contentViewVM.game.currentValue,
                alpha: contentViewVM.alpha
            )
            
            Button("Проверить результат", action: contentViewVM.showAlert)
                .alert("Your Score:",
                       isPresented: $contentViewVM.isActive,
                       actions: {}) {
                    Text(contentViewVM.score.formatted())
                }
            
            Button("Начать заново", action: contentViewVM.reset)
                .padding(.top, 10)
        }
        .padding()
    }
}

#Preview {
    ContentView(contentViewVM: ContentViewViewModel())
}
