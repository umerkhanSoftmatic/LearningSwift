//

import SwiftUI

struct AsyncImageLearning: View {
    let url = URL(string: "https://picsum.photos/400") // we can change the size by chaning this 400
    
    
    var body: some View {
        AsyncImage(url: url, content: { returnedImage in
            returnedImage
                .resizable()
                .frame(width: 400, height: 400) //it is will be applicable after resizable command execution
                .cornerRadius(25)
            
        }, placeholder: {
            ProgressView() //loading sign show krta h ye jb tk image process horhi hoti h
        })
            
    }
}

#Preview {
    AsyncImageLearning()
}
