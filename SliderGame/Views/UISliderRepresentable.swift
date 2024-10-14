//
//  UISliderRepresentable.swift
//  SliderGame
//
//  Created by Максим Назаров on 14.10.2024.
//

import SwiftUI

struct UISliderRepresentable: UIViewRepresentable {
    
    @Binding var value: Double
    
    let alpha: Double
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 100
        
        slider.addTarget(
            context.coordinator,
            action: #selector(Coordinator.valueChanged),
            for: .valueChanged
        )
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(value)
        uiView.thumbTintColor = .red.withAlphaComponent(alpha)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(value: $value)
    }
}

extension UISliderRepresentable {
    class Coordinator: NSObject {
        @Binding var value: Double
        
        init(value: Binding<Double>) {
            self._value = value
        }
        
        @objc func valueChanged(_ sender: UISlider) {
            sender.value = Float(value)
        }
    }
}

#Preview {
    UISliderRepresentable(value: .constant(10), alpha: 0.5)
}
