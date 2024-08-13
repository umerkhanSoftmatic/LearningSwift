//
//  WE can also implement same using enums

//import SwiftUI
//
//struct AlertsLearning: View {
//    @State var showAlert: Bool = false
//    @State var backgroundColor: Color = .pink
//    var body: some View {
//        ZStack{
//            backgroundColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//            
//            Button(action: {
//                showAlert.toggle()
//                
//            }, label: {
//                Text("Button").font(.largeTitle)
//                    .foregroundColor(.white)
//                    .frame(width: 120, height: 80)
//                    .background(Color.black
//                        .cornerRadius(35))
//                
//            })
//            .alert(isPresented: $showAlert, content: {
//                        alertFunc()
//            })
//        }
//    }
//    
//    func alertFunc() -> Alert{
//        return Alert(title: Text("This is an error"), message: Text("This is the message"), primaryButton: .destructive(Text("Delete"), action:{ backgroundColor = .green }), secondaryButton: .cancel())
//    }
//    
//}
//
//
//#Preview {
//    AlertsLearning()
//}


import SwiftUI

struct AlertsLearning: View {
    @State private var showAlert: Bool = false
    @State private var backgroundColor: Color = .pink
    
    enum AlertType {
        case error, warning, success
    }
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showAlert.toggle()
            }, label: {
                Text("Button")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .frame(width: 120, height: 80)
                    .background(Color.black.cornerRadius(35))
            })
            .alert(isPresented: $showAlert, content: {
                alertFunc(for: .error) // Directly call the alert function for the desired alert type
            })
        }
    }
    
    func alertFunc(for type: AlertType) -> Alert {
        switch type {
        case .error:
            return Alert(
                title: Text("This is an error"),
                message: Text("This is the message"),
                primaryButton: .destructive(Text("Delete"), action: {
                    backgroundColor = .green
                }),
                secondaryButton: .cancel()
            )
        case .warning:
            return Alert(
                title: Text("Warning"),
                message: Text("This is a warning message"),
                primaryButton: .destructive(Text("Dismiss"), action: {
                    backgroundColor = .yellow
                }),
                secondaryButton: .cancel()
            )
        case .success:
            return Alert(
                title: Text("Success"),
                message: Text("Operation was successful"),
                dismissButton: .default(Text("OK"), action: {
                    backgroundColor = .blue
                })
            )
        }
    }
}

#Preview {
    AlertsLearning()
}

