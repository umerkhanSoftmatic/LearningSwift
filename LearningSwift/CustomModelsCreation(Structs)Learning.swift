//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followersCount: Int
    let isVerfied: Bool
}

struct CustomModelsCreation_Structs_Learning: View {
    @State var users: [UserModel] = [
       // "Nick", "Emily", "Samantha", "Chris"
        UserModel(displayName: "Nick", userName: "nick123", followersCount: 1000, isVerfied: true),
        UserModel(displayName: "Emily", userName: "itsemily123", followersCount: 55, isVerfied: false),
        UserModel(displayName: "Samantha", userName: "samantha786", followersCount: 15, isVerfied: false),
        UserModel(displayName: "Chris", userName: "chrisi12", followersCount: 785, isVerfied: true),
    ]

    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15){
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading)
                        {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVerfied {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                        
                        
                        VStack {
                            Text("\(user.followersCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                }
                .padding(.vertical,10)
            }
            .navigationTitle("Users")
        }

    }
}

#Preview {
    CustomModelsCreation_Structs_Learning()
}
