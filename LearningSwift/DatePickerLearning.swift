

import SwiftUI

struct DatePickerLearning: View {
    
    @State var selectedDate: Date = Date() // Date() picks current date and time
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDte: Date = Date()
    var body: some View {
        
        DatePicker("Select a Date", selection: $selectedDate)
            .datePickerStyle(
            //CompactDatePickerStyle()
            GraphicalDatePickerStyle()
            //WheelDatePickerStyle() //etc etc
            )
        
        //DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
        
        
        
    }
    
}

#Preview {
    DatePickerLearning()
}
