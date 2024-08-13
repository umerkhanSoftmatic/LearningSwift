import SwiftUI

struct TabViewLearning: View {
    
    @State var selectedTab: Int = 0 // page will load from the predefined tab
    
    var body: some View {

        //MARK: TabView
        
//        TabView(selection: $selectedTab)
//        {
//            HomeView(selectedTab: $selectedTab)
//            
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0) //assigning tag (tab) number
//            
//            
//            Text("BROWSE TAB") //compulsory to add
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1) //assigning tag (tab) number
//            
//            
//            Text("PROFILE TAB") //compulsory to add
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2) //assigning tag(tab) number
//        }
        
        
        
        
        
        //MARK: PageTabView
        
        TabView{
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(.red)
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(.green)
        }
        .tabViewStyle(PageTabViewStyle())
        
        
    }
}

#Preview {
    TabViewLearning()
}

struct HomeView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea(edges: .top) // Ignore top edge only
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .bold()
                .foregroundColor(.white)
                
                Button(action: {
                    selectedTab = 1
                }, label: {
                    Text("Go to Browse Page")
                })
                .font(.headline)
                .padding()
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
            }
        }
        
    }
}
