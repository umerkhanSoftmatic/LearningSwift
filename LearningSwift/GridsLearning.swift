//MARK: Grid Systems:-

// 1. Customizable Grid Structure: Both LazyVGrid (vertical grid) and LazyHGrid (horizontal grid) allow you to define flexible grid layouts using GridItem. You can specify different column or row sizes, and even mix fixed, flexible, and adaptive grid items to create complex layouts.

// 2. Adaptive Layouts: You can make the grid items adaptive, meaning they adjust their size or number based on the available space. This is particularly useful for creating responsive designs that work well on different screen sizes and orientations.

import SwiftUI

struct GridsLearning: View {

    let Columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]

    var body: some View {
        
        ScrollView
        {
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)

            LazyVGrid(columns: Columns,
                      alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders],    //to pin the header  footer (when we scroll Section (header / footer text( will remain pinned)
                      
                      content: {
                Section(
                    header: Text("Section 1")
                    .foregroundColor(.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/ , alignment: .leading)
                    .background(Color.blue)
                    .padding()
                ) {
                     ForEach(0..<20){ index in
                    Rectangle()
                    .frame(height: 150)}}
                
                
                
                Section(
                    header: Text("Section 2")
                    .foregroundColor(.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/ , alignment: .leading)
                    .background(Color.red)
                    .padding()
                ) {
                     ForEach(0..<20){ index in
                    Rectangle()
                    .frame(height: 150)}}
            
            })
            
        }
}
    }


#Preview {
    GridsLearning()
}
