import SwiftUI

struct SearchView: View {
    @State private var search: String = "" // this State annotation is to mantain the state when the view rerenders (or smthg like that)
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(User.MOCK_USERS) { user in
                        NavigationLink(value: user) {
                            HStack {
                                CircleImage(image: user.profileImageUrl ?? "", width: 40, height: 40)
                                VStack(alignment: .leading) {
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                    Text(user.fullname ?? "User")
                                        .font(.footnote)
                                }
                                Spacer()
                            } // end of HStack
                            .padding(.leading, 8)
                            .foregroundColor(.black)
                        } // end of NavigationLink
                    } // end of ForEach
                } // end of LazyVStack
                .searchable(text: $search, prompt: "Search...") // to create the searchbox (***to be reviewed in the next lesson***)
            } // end of ScrollView
            // This navigationDestination is in the ScrollView because for navigation we need the parent container of the NavigationLink
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
