import SwiftUI

class CounterModel: ObservableObject {
    @Published var count = 0
}

struct ContentedView: View {
    @StateObject private var counter = CounterModel() // Shared instance
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("Go to Counter View 1", destination: CounterView1(counter: counter))
                NavigationLink("Go to Counter View 2", destination: CounterView2(counter: counter))
                NavigationLink("Go to Counter View 3", destination: CounterView3(counter: counter))
            }
            .navigationTitle("Home")
        }
    }
}

struct CounterView1: View {
    @ObservedObject var counter: CounterModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Counter 1: \(counter.count)")
            Button("Increment") {
                counter.count += 1
            }
            Button("Home") {
                presentationMode.wrappedValue.dismiss()
            }
        }
        .onAppear {
            print("CounterView1 appeared with count: \(counter.count)")
        }
        .navigationTitle("Counter View 1")
    }
}

struct CounterView2: View {
    @ObservedObject var counter: CounterModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Counter 2: \(counter.count)")
            Button("Increment") {
                counter.count += 1
            }
            Button("Home") {
                presentationMode.wrappedValue.dismiss()
            }
        }
        .onAppear {
            print("CounterView2 appeared with count: \(counter.count)")
        }
        .navigationTitle("Counter View 2")
    }
}

struct CounterView3: View {
    @ObservedObject var counter: CounterModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Counter 3: \(counter.count)")
            Button("Increment") {
                counter.count += 1
            }
            Button("Home") {
                presentationMode.wrappedValue.dismiss()
            }
        }
        .onAppear {
            print("CounterView3 appeared with count: \(counter.count)")
        }
        .navigationTitle("Counter View 3")
    }
}

struct PractiseLearning: View {
    var body: some View {
        ContentedView() // Use ContentedView to navigate between counters
    }
}

#Preview {
    PractiseLearning() // Preview the navigation setup
}



//import SwiftUI
//
//class CounterModel: ObservableObject {
//    @Published var count: Int
//    
//    init(count: Int) {
//        self.count = count
//    }
//}
//
//struct View1: View {
//    @StateObject var counter = CounterModel(count: 123) // StateObject initializes the instance
//    
//    var body: some View {
//        VStack {
//            Text("View1 Count: \(counter.count)")
//            Button("Set to 789") {
//                counter.count = 789
//            }
//        }
//    }
//}
//
//struct View2: View {
//    @StateObject var counter: CounterModel
//    
//    var body: some View {
//        VStack {
//            Text("View2 Count: \(counter.count)")
//        }
//    }
//}
//
//struct PractiseLearning: View {
//    @StateObject var counter = CounterModel(count: 123) // Shared instance
//
//    var body: some View {
//        VStack {
//            View1(counter: counter)
//            View2(counter: counter)
//        }
//    }
//}
//
//#Preview {
//    PractiseLearning()
//}
