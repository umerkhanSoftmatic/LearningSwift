//
// used to add mutitple line text (difference from TextFields)
//

import SwiftUI

struct TextEditorLearning: View {
    @State var textEditorText: String = "This is the starting text."
    @State var savedText: String = ""
    
    var body: some View {
        VStack{
            TextEditor(text: $textEditorText)
                .frame(height: 250) //to control the box of text editor
                .shadow(radius: 20)
              //
            
            Button(action: {
                savedText = textEditorText
            }, label: {
                Text("SAVE")
                    .padding()
                    .background(Color.blue.cornerRadius(25))
                    .foregroundColor(.white)
                    .font(.headline)
            })
            Text(savedText)  // to display as a text
          //
        }
        .padding()

        
    }
}

#Preview {
    TextEditorLearning()
}
