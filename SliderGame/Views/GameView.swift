//
//  GameView.swift
//  SliderGame
//
//  Created by Максим Назаров on 14.10.2024.
//

import SwiftUI

struct GameView: View {
    
    @Binding var target: Int
    @Binding var value: Double
    var alpha: Double
    
    var body: some View {
        VStack {
            Text("Передвинь слайдер, как можно ближе к: \(target)")
            HStack {
                Text("0")
                UISliderRepresentable(
                    value: $value,
                    alpha: alpha
                )
                Text("100")
            }
        }
    }
}

#Preview {
    GameView(target: .constant(1), value: .constant(10), alpha: 0.5)
}
