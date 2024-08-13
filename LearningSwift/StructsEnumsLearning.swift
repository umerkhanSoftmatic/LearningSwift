
// init() -> function to set up your view


import SwiftUI

//MARK: init()

//
//struct StructsEnumsLearning: View {
//    
//    let backgroundColor: Color
//    let count: Int
//    let title: String
//    
//    init(count: Int, title: String)
//    {
//        self.count = count
//        self.title = title
//        
//        if title == "Apples"
//        {
//            self.backgroundColor = .red
//        }
//        else if title == "Oranges"
//        {
//            self.backgroundColor = .orange
//        }
//        else
//        {
//            self.backgroundColor = .black
//        }
//    }
//    
//   
//   
//    var body: some View {
//        VStack(spacing:10){
//            Text("\(count)")
//                .font(.largeTitle)
//                .foregroundColor(.white)
//                .underline()
//            
//            Text(title)
//                .font(.headline)
//                .foregroundColor(.white)
//        }
//        .frame(width: 100, height: 100)
//        .background(backgroundColor)
//        .cornerRadius(10)
//    }
//}
//
//#Preview {
//    StructsEnumsLearning(count: 50, title: "Oranges")
//}


//MARK: enums



struct StructsEnumsLearning: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit)
    {
        self.count = count
        
        if fruit == .Apple
        {
            self.title = "Apples"
            self.backgroundColor = .red
        }
        else if fruit == .Orange
        {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
        else
        {
            self.title = "Nothing"
            self.backgroundColor = .black
        }
    }
    
    enum Fruit{
        case Apple
        case Orange
    }
   
    var body: some View {
        VStack(spacing:10){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 100, height: 100)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack{
        StructsEnumsLearning(count: 50, fruit: .Apple)
        StructsEnumsLearning(count: 50, fruit: .Apple)  // yahan srf isy add krne se oopr ek or block agya horizontal me.
    }
}
