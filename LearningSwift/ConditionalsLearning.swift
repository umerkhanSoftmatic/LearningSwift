//
//  ConditionalsLearning.swift
//  LearningSwift
//
//  Created by ehtisham on 08/08/2024.
//

import SwiftUI

struct ConditionalsLearning: View {
    @State var showCircle: Bool = false  //by default -> false
    
    var body: some View {
        
        VStack{
            
            Button(action: {
                showCircle.toggle() //// A value type whose instances are either `true` or `false`.
            }, label: {
                Text("Button")
                    .foregroundColor(.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(
                        Color.black
                            .cornerRadius(30)
                            .shadow(radius: 15))
            })
            
            if showCircle{
                Circle()
                    .frame(width: 100,height: 100)
            }
            else
            {
                Rectangle()
                    .frame(width: 100,height: 100)
            }
        }
    }
}

#Preview {
    ConditionalsLearning()
}
