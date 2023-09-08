import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
            Text("Segundo Tab")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Text("Tercer Tab")
                .tabItem {
                    Image(systemName: "plus.square")
                }
            FeedCell()
                .tabItem {
                    Image(systemName: "heart")
                }
            ProfileView()
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
