import SwiftUI

struct ExtractionLearning: View {
    @State var title: String = "Default Title"
    @State var backgroundColor: Color = Color.green
    
    var body: some View
    {
        ZStack{
            
            backgroundColor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            extra   // Extracted view called
        }
        
        
        
    }
    
    
    var extra: some View  //Extracted view
    {
        VStack(spacing:20){
            
            Text(title) // to print title on screen
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
               

            
     //
            Button(action: {
                
                Changer() //Extracted function called here
                
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
    
    
    
    func Changer() //Extracted func
    {
        self.title = "Title was changed"
        backgroundColor = .pink
    }
    
}

#Preview {
    ExtractionLearning()
}
