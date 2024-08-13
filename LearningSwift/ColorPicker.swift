import SwiftUI

struct ColorPickerView: View {
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                ColorPicker("Select a color", selection: $backgroundColor, supportsOpacity: true)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .shadow(radius: 5)
            }
            .padding()
        }
    }
}

#Preview {
    ColorPickerView()
}
