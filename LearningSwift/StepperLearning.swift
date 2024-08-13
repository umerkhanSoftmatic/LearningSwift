//
//  StepperLearning.swift
//  LearningSwift
//
//  Created by ehtisham on 12/08/2024.
//

import SwiftUI

struct StepperLearning: View {
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue) ", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/ + widthIncrement , height: 100)
            
            Stepper("Stepper 2")
            {
                //increment
                widthIncrement += 10
            } onDecrement: {
                widthIncrement -= 10
            }
        }
    }
}

#Preview {
    StepperLearning()
}
