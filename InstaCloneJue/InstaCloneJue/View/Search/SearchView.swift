import SwiftUI

struct SearchView: View {
    @State private var search: String = "" // this State annotation is to mantain the state when the view rerenders (or smthg like that)
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(0...18,id: \.self) { contact in
                        HStack {
                            CircleImage(image: "Batman", width: 40, height: 40)
                            VStack(alignment: .leading) {
                                Text("Batman")
                                    .fontWeight(.semibold)
                                Text("Bruce Wayne")
                                    .font(.footnote)
                            }
                            Spacer()
                        } // end of HStack
                        .padding(.leading, 8)
                    } // end of ForEach
                } // end of LazyVStack
                .searchable(text: $search) // to create the searchbox (***to be reviewed in the next lesson***)
            } // end of ScrollView
        }
        .navigationTitle("Explore")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}
