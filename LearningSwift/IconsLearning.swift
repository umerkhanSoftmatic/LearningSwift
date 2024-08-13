//

// MARK: ICONS

//

import SwiftUI

struct IconsLearning: View {
    var body: some View {
        
        ZStack
        {
        
            
            LinearGradient(colors: [Color.teal , Color.black], startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all) // Make sure the color covers the entire screen
            
            Image(systemName: "car.top.door.front.left.and.front.right.and.rear.left.and.rear.right.open")
            
                .resizable()  // to make icon adjust itself according to frame / box etc (it is necessary for the below commands to work)
            
                .scaledToFit() // to make icon fit inside frame / box etc
                .scaledToFill() // to fill color inside the icon gracefully
                .foregroundColor(.white)
                .frame(width: 250, height: 250)
                .shadow(color: .white, radius: 10)
            

        }
        
    }
}

#Preview {
    IconsLearning()
}

