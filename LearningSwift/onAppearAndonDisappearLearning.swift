//

import SwiftUI

struct onAppearAndonDisappearLearning: View {
    @State var myText: String = "Start text"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack
                {
                    ForEach(0..<50) {_ in
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the next text!"
                }
            })
            .onDisappear(perform: {
                myText = "EndingText."
            })
            .navigationTitle("onAppear: \(count)")
        }
    }
}

#Preview {
    onAppearAndonDisappearLearning()
}
