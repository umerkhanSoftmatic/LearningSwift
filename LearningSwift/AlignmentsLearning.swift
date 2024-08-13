import SwiftUI

//MARK: USE OF frame()

//struct AlignmentsLearning: View {
//    var body: some View {
//        Text("Hello, How are you?")
//            .background(Color.white)
//            .frame(width: 100, height: 100, alignment: .topLeading)
//        
//            .background(Color.blue)
//            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .bottom)
//            .background(Color.red)
//            .frame(height: 400 , alignment: .top)
//            .background(Color.green)
//            .frame(alignment: .topLeading)
//    }
//}

//MARK: USE OF background()
//puts objects behind the previous object

//struct AlignmentsLearning: View {
//    var body: some View {
//        Text("Hello")
//            .background(
//                Circle()
//                    .fill(Color.red)
//                    .frame(width: 100, height: 100, alignment: .center)
//            )
//            .background(
//                Circle()
//                    .fill(Color.green)
//                    .frame(width: 120, height: 120, alignment: .center)
//            )
//
//    }
//}

//MARK: USE OF overlay()
//puts objects on top of the previous object

struct AlignmentsLearning: View {
    var body: some View {
        Circle()
            .fill(Color.blue)
            .stroke(Color.black, style: StrokeStyle(lineWidth: 8, lineCap: .round, dash: [20]))
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100, alignment: .center)
            
            .overlay(
            Circle()
                .fill(Color.red)
                .frame(width: 70, height: 70, alignment: .center)
            )
            .overlay(
            Circle()
                .fill(Color.black)
                .frame(width: 30, height: 30, alignment: .center)
            )
            
        
    }
}
#Preview {
    AlignmentsLearning()
}
