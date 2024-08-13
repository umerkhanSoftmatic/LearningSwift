import SwiftUI

struct ListLearning: View {
    @State var fruits: [String] = ["Apple", "Banana", "Oranges", "Peach"]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Fruits")) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .padding(.bottom,10)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
                
                }
                
            .navigationTitle("Grocery Title")
            .navigationBarItems(leading: EditButton(), trailing: AddButton)
        }
        .accentColor(.red)
    }
//MARK: We can also add more options in slide of list items as Archive , Save etc by using .swipeActions()
    
var AddButton: some View
    {
        Button("Add", action: {add()})
    }
    
    
    func delete(at offsets: IndexSet) {
        fruits.remove(atOffsets: offsets)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        fruits.move(fromOffsets: source, toOffset: destination)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

#Preview {
    ListLearning()
}
