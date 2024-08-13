//
//  TextLearning.swift
//  LearningSwift

//

import SwiftUI

//Here, a structure named TextLearning is being defined. This structure conforms to the View protocol, which means it represents a piece of the user interface and can be rendered on the screen.

//The body property is a required property for any type that conforms to the View protocol. It defines the content and layout of the view.

//The 'some View' keyword indicates that the body will return a view that conforms to the View protocol.



struct TextLearning: View {
    var body: some View {
        Text("Hello, World! This is the famous text which almost every programmer prints when they start programming in any language or stack")
            //.font(.body)         // BASIC
            //.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)      // TO MAKE TEXT SIZE, TITLE
            //.font(.caption)    // SIZE OF CAPTION
            //.font(.largeTitle) // SIZE OF LARGER TITLE
        
            //.bold()
            //.italic()
            // .underline()
     //.underline(color: Color.blue) //MODIFIED UNDERLINING
     //.strikethrough()  // TO CUT THE TEXT
     //.strikethrough(color: Color.blue) //MODIFIED
        
        //MODIFIED FONTS (if we want to add custom size: rare case)
        
     .font(.system(size: 24, weight: .semibold, design:.monospaced)) //design is font
        
     .baselineOffset(20.0) //used for vertical spacing between multiple lines
        
     //.kerning(10) //spacing between letters
        
     .multilineTextAlignment(.leading) // To align text left(leading) / right(trailing) / centre
        
     .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)  //To change the color of fonts
        
        //TO HANDLE THE FRAME (like in this example all the text is inside one frame) SO WE CAN MODIFY THE WHOLE FRAME:
        
     // .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
     // .minimumScaleFactor(0.1) // To reduce the size by 10% (0.1) of a complete text inside the frame
        
        
                   
    }
}



#Preview {
    TextLearning()
}


//MARK: If we want to make our text copyable (when long pressed , give option to copy?) then put Text Selection here.
