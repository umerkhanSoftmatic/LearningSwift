

import SwiftUI

struct Toggle_Switch_Learning: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack
            {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
        }
            .font(.largeTitle)
            
            Toggle(
                isOn: $toggleIsOn ,
                   label: {Text("Change Status")}
            )
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            // .toggleStyle(SwitchToggleStyle(tint: Color.red))  To change the color of the switch
            Spacer()
        }
        
    }
}

#Preview {
    Toggle_Switch_Learning()
}
