//
//  SliderLearning.swift
//  LearningSwift
//
//  Created by ehtisham on 12/08/2024.
//

import SwiftUI

struct SliderLearning: View {
    @State var sliderValue: Double = 3
    
    var body: some View {
        
        VStack {
            Text("Rating:")
            Text(
                String(format: "%.0f", sliderValue) // upto two decimal places formatting
            )
            Slider(value: $sliderValue)
            
            
            
            Text("Rating 2:")
            Text("\(sliderValue)")
            Slider(value: $sliderValue, in: 1...5, step: 1.0)  // step: 1.0 means increment decrement will take place with value of 1
            
                .accentColor(.red)
            
            
// we can also set min , max ranges values
        }
        
    }
}

#Preview {
    SliderLearning()
}
