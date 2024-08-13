//

// MARK: SHAPES , COLORS , GRADIENTS

//

import SwiftUI

struct ShapesLearning: View {
    var body: some View {
        
           // .fill(Color.green)  //FILLS COLOR INSIDE THE SPECIFIED SHAPE
        
           // .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/) //PUTS COLOR IN THE WHOLE TEXT / SHAPE ETC
        
           // .stroke()  // SHOWS ONLY OUTLINE OF THE SHAPE
        
           // .stroke(Color.purple)
           // .stroke(Color.purple, lineWidth: 30)    //Linewidth controls width of the outline
        
           // .stroke(Color.purple, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [50])) // Linecap controls shape of the outline , dash makes the outline dashed
        
            //.trim(from: 0.4, to: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/) // trims the shapes top the specified ranges
        
    
        
        // MARK: COLORS:-
        ZStack
        {
            //MARK: Use of Gradients:
            
            LinearGradient(colors: [Color.brown , Color.gray , Color.cyan], startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all) // Make sure the color covers the entire screen
            Circle()
                .fill(
                    Color(UIColor.brown)  //Color(Color Literal) to choose color from the colors library having any color, hex codes etc
                    
                )
                .shadow(radius: 20)
                .shadow(color: .black.opacity(20), radius: 20, x: 5.0, y: 5.0)
            
                .frame(width: 250, height: 250) //As described earlier, it covers the complete frame inside which there are shapes , texts etc
        }
        
    }
}

#Preview {
    ShapesLearning()
}
