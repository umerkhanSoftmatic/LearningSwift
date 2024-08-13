import SwiftUI

struct TransitionLearning: View {
    @State  var showRectangle = false

    var body: some View {
        VStack {
            Button(action: {
                withAnimation {
                    showRectangle.toggle()
                }
            }) {
                Text("Toggle Rectangle")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()

            if showRectangle {
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 200, height: 200)
                    .transition(.slide) // Using a slide transition
                    .animation(.easeInOut, value: showRectangle) // Adding animation for smooth transition
            }
        }
    }
}

#Preview {
    TransitionLearning()
}
