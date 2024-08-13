// TextField is used to enter one line text (means you cant use multiple lines in TextField)

import SwiftUI

struct TextFieldLearning: View {
    @State private var textFieldText: String = ""
    @State private var dataArray: [String] = []
    
    var body: some View {
        ZStack {
            Color.pink.ignoresSafeArea()
            
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding()
                    .background(Color.white.opacity(0.8))
                    .font(.headline)
                
                Button(action: {
                    if !textFieldText.isEmpty {  // so that it cant append empty
                        dataArray.append(textFieldText)
                        textFieldText = ""  //so that it automatically becoms empty after save button is pressed adn the text being append
                    }
                }, label: {
                    Text("SAVE")
                        .padding()
                        .background(Color.blue.cornerRadius(25))
                        .foregroundColor(.white)
                        .font(.headline)
                })
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
            } //we can add more logic like user cant press save buttton (disabled till) user enters according to the defined condition
        }
    }
}

#Preview {
    TextFieldLearning()
}


