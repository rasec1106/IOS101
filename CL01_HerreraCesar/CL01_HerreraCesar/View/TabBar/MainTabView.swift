import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
            Text("Tab2")
                .tabItem {
                    Image(systemName: "calendar")
                }
            Text("Tab3")
                .tabItem {
                    Image(systemName: "plus.square")
                }
            Text("Tab4")
                .tabItem {
                    Image(systemName: "bell.fill")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
