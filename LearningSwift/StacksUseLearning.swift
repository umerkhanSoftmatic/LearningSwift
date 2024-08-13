

// VStack -> Vertical
// HStack -> Horizontal
// ZStack -> Back to Front (over another)



import SwiftUI

struct StacksUseLearning: View {
    var body: some View {
        
        ZStack{
            Rectangle()
                .fill(Color.black)
                .frame(width: 350, height: 400, alignment: .center)
            
            ZStack (alignment: .topLeading)
            {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 300, height: 300)
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 200, height: 200)
                
                Rectangle()
                    .fill(Color.purple)
                    .frame(width: 100, height: 100)
            }
        }
    }
}

#Preview {
    StacksUseLearning()
}
