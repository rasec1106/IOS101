import SwiftUI

struct SearchView: View {
    var body: some View {
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
        } // end of ScrollView
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
