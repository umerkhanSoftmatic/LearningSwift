
import SwiftUI

struct ImagesLearning: View {
    var body: some View {
        ZStack
        {
            LinearGradient(colors: [Color.teal, Color.brown], startPoint: .top, endPoint: .bottom)
            
            .edgesIgnoringSafeArea(.all) // Make sure the color covers the entire screen
            
            Image("myPic")
               // .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/) // to give image one color (useful when putting pic as an icon, like a pic of letter 'G' )
              //  .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
                .resizable()  //It is must to adjust size acc to box/frame
            
                // .aspectRatio(contentMode: .fit)
                // .scaledToFit()
                .frame(width: 350, height: 380)
                // .cornerRadius(190)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)  //can give any shape to object inside frame
            
        }
    
    }
}

#Preview {
    ImagesLearning()
}
