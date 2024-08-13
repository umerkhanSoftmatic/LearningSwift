
import SwiftUI

struct TopHeaderBar: View {
    var leftIcon : String
    var title : String
    var rightIcon : String
    var backButtonPressed : (String) -> Void
    
    var body: some View {
        HStack {
            
            Button {
                self.backButtonPressed("Hello parent")
            } label: {
                Image(systemName: leftIcon)
                    .resizable()
                    .foregroundColor(.black)
                    .frame(width: 15.0, height: 15.0)
                    .padding(.leading)
            }

          
            
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .padding(.leading, 10)
                .padding(.trailing, 20)
                .frame(maxWidth: .infinity, alignment: .center)
            
            Image(systemName: rightIcon)
                .resizable()
                .foregroundColor(.black)
                .frame(width: 15.0, height: 15.0)
                .padding(.trailing, 25)
        }
        .background(Color.white)
    }
}

#Preview {
    TopHeaderBar(leftIcon: "arrow.left", title: "Resources", rightIcon: "list.triangle", backButtonPressed: {_ in })
}
