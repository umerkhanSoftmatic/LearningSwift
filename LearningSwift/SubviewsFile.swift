//
//  SubviewsFile.swift
//  LearningSwift
//
//  Created by ehtisham on 08/08/2024.
//

import SwiftUI

struct ExtractedView: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(color)
            Text(title)
                .font(.largeTitle)
                .foregroundColor(color)
        }
        .padding()
        .background(Color.black)
        .cornerRadius(25.0)
    }
}


#Preview {
    ExtractedView(title: "Apples", count: 11, color: .white)
}
