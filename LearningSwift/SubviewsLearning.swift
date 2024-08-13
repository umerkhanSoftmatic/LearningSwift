

import SwiftUI

struct SubviewsLearning: View {
    var body: some View {
        ZStack{
            Color.pink.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            ExtractedView(title: "Apples", count: 10, color: .white)
        }
    }
}

#Preview {
    SubviewsLearning()
}

