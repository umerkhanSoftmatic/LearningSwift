//
//  LoopsLearning.swift
//  LearningSwift
//
//  Created by ehtisham on 08/08/2024.
//

import SwiftUI

struct LoopsLearning: View {
    let data: [String] = ["Hey", "hi", "hello"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack{
            ForEach(data.indices){ index in
                Text("\(data[index]): \(index)")
            }
            }
                }
            }


#Preview {
    LoopsLearning()
}
