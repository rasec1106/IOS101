import SwiftUI

struct ProfileView: View {
    let user: User
    private let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        VStack {
            // Header
            VStack {
                // Pic and stats
                HStack {
                    CircleImage(image: user.profileImageUrl ?? "", width: 80, height: 80)
                    Spacer()
                    UserStatsView(value: "3", name: "Posts")
                    Spacer()
                    UserStatsView(value: "9", name: "Followers")
                    Spacer()
                    UserStatsView(value: "15", name: "Following")
                }
                
                // Name and nickname
                VStack(alignment: .leading, spacing: 8) {
                    Text(user.fullname ?? "Username")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text(user.nickname ?? "Nickname")
                        .font(.footnote)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
            // Post
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(0...15, id:\.self) { index in
                        Image(user.profileImageUrl ?? "")
                            .resizable()
                            .scaledToFill()
                    }
                }
            }
            
        } // end of VStack
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing){
                Image(systemName: "line.horizontal.3")
                    .imageScale(.large)
            }
        }
        
    }
}
