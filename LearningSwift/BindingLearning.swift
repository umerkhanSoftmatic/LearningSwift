// @Binding property wrapper is used to connect the @State variable from parent to child view (Subview) to make changes from the subview to the main view

import SwiftUI

struct BindingLearning: View {
    
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            ButtonView(backgroundColor: $backgroundColor)
            
        }
    }
}


struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    
    var body: some View {
        Button(action: {
            backgroundColor = .green
        }, label: {
            Text("Background")
                .foregroundColor(.white)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
                .background(
                    Color.black
                        .cornerRadius(30)
                        .shadow(radius: 15))
        })
    }
}



#Preview {
    BindingLearning()
}
