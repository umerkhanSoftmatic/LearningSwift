//

//MARK: Basic use example:-


//
//import SwiftUI
//
//struct ActionSheetsLearning: View {
//    
//    @State var showActionSheet: Bool = false
//    
//    var body: some View {
//        
//        Button(action: {
//            showActionSheet.toggle()
//        }, label: {
//            Text("Button")
//                .font(.largeTitle)
//                .foregroundColor(.white)
//                .frame(width: 120, height: 80)
//                .background(Color.black.cornerRadius(35))
//        })
//        .actionSheet(isPresented: $showActionSheet, content:getActionSheet)
//        
//    }
//    
//    func getActionSheet() -> ActionSheet
//    {
//        let button1: ActionSheet.Button = .default(Text("Yes"))
//        let button2: ActionSheet.Button = .destructive(Text("No"))
//        let button3: ActionSheet.Button = .cancel()
//        
//        
//        return ActionSheet(title: Text("Button is pressed"), message: Text("Wanna proceed") , buttons: [button1, button2, button3])
//        
//    }
//    
//}
//
//#Preview {
//    ActionSheetsLearning()
//}



//MARK: Advance example:-

import SwiftUI

struct ActionSheetsLearning: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isMyPost // Provide a default value
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        
        HStack{
            Circle()
                .frame(width: 50, height: 50)
                .padding(.horizontal)
                .overlay(
            Image("myPic")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(25)
            )
            
            Text("@umerkhan12_")
                .padding(.horizontal,-15)
            Spacer()
            Button(action: {
                actionSheetOption = .isMyPost
                showActionSheet.toggle()
            }, label: {
                Image(systemName: "ellipsis")
                    .padding(.horizontal)
            })
            .accentColor(.primary) // to make it black again
            
        }
        //.padding(.horizontal)
        Rectangle()
            .contextMenu(menuItems:{  //CLick on Rectangle to see the working of context menu
                Text("Hello")  //hum yahan pe koi buttins bhi daal skte hain like / dislikes k lye
                Text("Hello")
            }
            )
            .aspectRatio(1.0, contentMode: .fit)

            .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            // add code to share post
        }
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            // add code to report this post
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            // add code to delete this post
        }
        let cancelButton: ActionSheet.Button = .cancel()
        
        let title = Text("What would you like to do?")
        
        switch actionSheetOption {
        case .isOtherPost:
            return ActionSheet(title: title, message: nil, buttons: [shareButton, reportButton, cancelButton])
        case .isMyPost:
            return ActionSheet(title: title, message: nil, buttons: [shareButton, reportButton, deleteButton, cancelButton])
        }
    }
}

#Preview {
    ActionSheetsLearning(actionSheetOption: .isMyPost) // Initialize with a default option for preview
}
