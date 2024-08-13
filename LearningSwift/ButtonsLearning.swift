
// MARK: Buttons and @State

//When the value of a @State property changes, SwiftUI automatically recomputes the view's body to reflect those changes. This is essential for creating interactive views that respond to user input.

// SwiftUI relies on @State to know when to re-render the view. Without it, the changes to these properties won't trigger a view update.

import SwiftUI

struct ButtonsLearning: View {
    @State var title: String = "Default Title"
    @State var backgroundColor: Color = Color.green
    
    var body: some View
    {
        ZStack{
            
            backgroundColor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack(spacing:20){
                
                Text(title) // to print title on screen
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                   
                
                
          //
                Button(action: {
                    self.title = "Title #1 was changed"
                    backgroundColor = .red
                }, label: {
                    Text("Press Me!")
                })
                .accentColor(.red) //to color button
                
                
                
                
                
           //
                Button(action: {
                    self.title = "Title #2 was changed"
                    backgroundColor = .blue
                }, label: {
                    Text("Press")
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                      //  .frame(width:100 , height:50) isse bhi bna skte hain hum design
                        .padding()
                        .padding(.horizontal,20)
                        .background(
                             Color.blue
                            .cornerRadius(10)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        )
                    
                })
              //  .accentColor(.red) if we dont want to use foreground
                
                
                
                
                
         //
                Button(action: {
                    self.title = "Title #3 was changed"
                    backgroundColor = .purple
                }, label: {
                    Circle()
                        .fill(.white)
                        .frame(width:75, height:75)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .overlay(
                            Image(systemName: "heart.fill")
                                .foregroundColor(Color(hue: 1.0, saturation: 0.927, brightness: 0.659))
                            
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(.bold)
                            
                        )
                        
                })
                
                
                
                
            }
        }
        
        
        
    }
}

#Preview {
    ButtonsLearning()
}


//MARK: WE can also use (more advanced features) such as: .controlSize , .buttonStyle and .buttonBorderShape (explore through video or chatgpt)

//MARK: Moreover, we also have badges to add notisfication alert (like 1 in red circle over icon) by using 'Badges'

