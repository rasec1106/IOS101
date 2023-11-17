import SwiftUI

struct CurrentUserProfileView: View {
    private let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        NavigationStack {
            VStack {
                // Header
                VStack {
                    // Pic and stats
                    HStack {
                        CircleImage(image: "BlackPanther", width: 80, height: 80)
                        Spacer()
                        UserStatsView(value: "3", name: "Posts")
                        Spacer()
                        UserStatsView(value: "9", name: "Followers")
                        Spacer()
                        UserStatsView(value: "15", name: "Following")
                    }
                    
                    // Name and nickname
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Cesar Herrera")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Text("rasec")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    // Button
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .frame(width: 360,height: 32)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray,lineWidth: 1)
                            )
                    }
                    

                }
                .padding(.horizontal)
                
                // Post
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(0...15, id:\.self) {
                            index in Image("BlackPanther").resizable().scaledToFill()
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
                        .onTapGesture{
                            AuthService.shared.signOut()
                        }
                }
            }
        } // end of NavigationStack
    }
}
