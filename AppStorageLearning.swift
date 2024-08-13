//

import SwiftUI

struct AppStorageLearning: View {
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Ad Name Here")
            
            
        }
    }
}

#Preview {
    AppStorageLearning()
}
