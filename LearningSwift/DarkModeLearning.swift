

import SwiftUI

struct DarkModeLearning: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack(spacing: 25) {
                    
                    //adaptive colors: which adjusts itself according to light / dark appearances
                    
                    Text("This color is PRIMRY")  //adaptive color
                        .foregroundColor(.primary)
                    
                    Text("This color is SECONDARY") //adaptive color
                        .foregroundColor(.secondary)
                    
                    Text("This color is BLACK")
                        .foregroundColor(.black)
                    
                    Text("This color is WHITE")
                        .foregroundColor(.white)
                    
                    Text("This color is RED")
                        .foregroundColor(.red)
                    
                    Text("This color is GLOABBLY ADAPTIVE")
                        .foregroundColor(Color("AdaptiveColor")) // one which we made in assets
                    
                    
                }
            }
        }
    }
}

#Preview {
    Group {
        DarkModeLearning()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
//        
//        DarkModeLearning()
//            .preferredColorScheme(.light)
    }
}
