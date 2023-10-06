import SwiftUI

struct FeedView: View {
    var body: some View {
        
        NavigationStack { // soon it will be deprecated and replaced by NavigationStack
            ScrollView {
                LazyVStack { // this lazy VStack useas a lazy loading
                    // imagine we are connecting to FIREBASE
                    FeedCell(userImage: "Batman", userName: "User01", postImage: "Batman", postText: "El caballero de la noche")
                    FeedCell(userImage: "BlackPanther", userName: "User02", postImage: "BlackPanther", postText: "La pantera negra ataca otra vez")
                    FeedCell(userImage: "facebookLogo", userName: "User03", postImage: "facebookLogo", postText: "Facebook")
                    FeedCell(userImage: "BlackPanther", userName: "User04", postImage: "Batman", postText: "Nos hicimos amiwis")
                } // end of LazyVStack
                .padding(.top, 10)
            } //end of ScrollView
            // any item inside the NavigationView INHERITS some "extended(extension) methods"
//            .navigationTitle("Feed")
//            .navigationBarTitleDisplayMode(.inline)
            .toolbar { // this is a bar for the tools ("barra de herramientas") and it helps us to insert components either in the left or right section
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack{
                        Image(systemName: "person")
                            .resizable()
                            .frame(width: 28, height: 28)
                        Text("Inicio")
                    }
                    
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Image(systemName: "plus.circle")
                    }
                    
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
