import SwiftUI

struct ScrollViewLearning: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color.brown, Color.gray, Color.cyan], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all) // Make sure the color covers the entire screen
            
            ScrollView{
                LazyVStack {   // We can also make VStack / HStack -> LazyVStack if we want to load the data, image, etc. when we scroll down to it
                    
                    ForEach(0..<20) { index in
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(0..<20) { index in
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .fill(Color.gray.opacity(0.2)) // Adjusted opacity to 0.2
                                        .frame(width: 200, height: 200)
                                        .shadow(radius: 15)
                                      //  .padding()
                                        .overlay( // Add an overlay to place the image inside the rectangle
                                            Image("myPic")
                                                .resizable()
                                                .scaledToFit() // Scale the image to fit within the rectangle
                                                .frame(width: 180, height: 180) // Adjust the size of the image as needed
                                                .clipShape(RoundedRectangle(cornerRadius: 25.0)) // Clip the image to match the shape of the rectangle
                                        )
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewLearning()
}
