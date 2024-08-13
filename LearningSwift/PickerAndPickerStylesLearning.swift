//import SwiftUI
//
//struct PickerAndPickerStylesLearning: View {
//    @State var selection: String = "18"  // Default selection
//    
//    var body: some View {
//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//            
//            Picker(selection: $selection, label: Text("Picker")) {
//                
//                //               Text("1").tag("1")
//                //                Text("2").tag("2")
//                //                Text("3").tag("3")
//                //                Text("4").tag("4")
//                
//                ForEach(18..<100) { number in
//                    Text("\(number)").tag("\(number)")
//                }
//            }
//            .pickerStyle(.wheel)  //  You can try different pickers like Filter , date etc
//            //.font(.headline)
//            //.foregroundColor(.red)
//            //.background(Color.gray.opacity(0.3))
//        }
//    }
//}
//
//#Preview {
//    PickerAndPickerStylesLearning()
//}


import SwiftUI

struct FilterPickerView: View {
    @State  var showPicker: Bool = false
    @State  var selectedFilter: String = "Most Recent"
    
    var body: some View {
        VStack {
            // Display the selected filter
            Text("Selected Filter: \(selectedFilter)")
                .padding()
            
            // Button to show the picker
            Button(action: {
                showPicker.toggle()
            }, label: {
                Text("Filter")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
            
            // Show picker when the button is pressed
            if showPicker {
                Picker(selection: $selectedFilter, label: Text("Filter Options")) {
                    Text("Most Recent").tag("Most Recent")
                    Text("Most Liked").tag("Most Liked")
                    Text("Oldest").tag("Oldest")
                }
                .pickerStyle(.palette) // try diff
                .background(Color.gray.opacity(0.3))
                .padding()
            }
        }
        .padding()
    }
}

#Preview {
    FilterPickerView()
}
