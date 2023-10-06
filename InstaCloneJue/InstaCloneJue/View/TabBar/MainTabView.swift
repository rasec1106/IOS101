import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            UploadPostView()
                .tabItem {
                    Image(systemName: "plus.square")
                }
            FeedCell()
                .tabItem {
                    Image(systemName: "heart")
                }
            CurrentUserProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
