import SwiftUI

struct FeedView: View {
    var body: some View {
        
        NavigationView { // soon it will be deprecated and replaced by NavigationStack
            ScrollView {
                LazyVStack { // this lazy VStack useas a lazy loading
                    // imagine we are connecting to FIREBASE
                    ForEach(0...12, id: \.self) { post in
                        FeedCell()
                    }
                } // end of LazyVStack
                .padding(.top, 10)
            } //end of ScrollView
            // any item inside the NavigationView INHERITS some "extended(extension) methods"
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { // this is a bar for the tools ("barra de herramientas") and it helps us to insert components either in the left or right section
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("logo")
                        .resizable()
                        .frame(width: 100, height: 32)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "paperplane")
                }
            }
            
        } // end of NavigationView
        
        
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
