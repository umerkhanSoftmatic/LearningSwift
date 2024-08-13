

import SwiftUI

//MARK: Spacer()

struct PaddingAndSpacingLearning: View {
    
    var body: some View {
        VStack{
            HStack(spacing:0){
                Circle()
                    .fill(Color.black)
                    .frame(width: 100, height: 100, alignment: .center )
                
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                
                Circle()
                    .fill(Color.black)
                    .frame(width: 100, height: 100, alignment: .center )
            }
            
            .padding(.horizontal)
            .background(Color.blue)
            
            Spacer()
                .frame(width: 20)
                .background(Color.orange)
        }
        
    }
    
    
    
    
    
    
    //MARK: .padding()
    
//    var body: some View {
//        
//        VStack(alignment: .leading)
//        {
//            Text("Hello, World!")
//                .font(.largeTitle)
//                .fontWeight(.semibold)
//                .padding(.bottom,20)
//            Text("I am trying to become an iOS Developer. I like Apple products so the development related to these products is gonna be interesting. I Hope So :)")
//        }
//                .padding()
//                .padding(.vertical,10)
//                .padding(.horizontal,10)
//                .background(
//                     Color.white
//                    .cornerRadius(10)
//                    .shadow(color: Color.black.opacity(0.3) , radius: 10, x: 0.0, y:0.0)
//                )
//            
//    }
}

#Preview 
{
    PaddingAndSpacingLearning()
}
