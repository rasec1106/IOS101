import SwiftUI

struct FeedCell: View {
    let userImage: String
    let userName: String
    let postImage: String
    let postText: String
    var body: some View {
//        NavigationStack{
            VStack {
                // Pic and name
                HStack {
                    // Image(systemName: "") // this is to use an IOS system image
                    CircleImage(image: userImage, width: 40, height: 40)
                    Text(userName)
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Spacer() // this takes all the remain space
                }
                .padding(.leading, 8) // leading -> left ; trailing -> right
                                
                // Post text
                Text(postText)
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                NavigationLink {
                    Text("Hello World")
                } label: {
                    // Image post
                    Image(postImage)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 400)
                }
                
                // Action buttons
                HStack {
                    Button { // we use an action/label button
                        // here comes the code
                    } label: {
                        // this is the design part
                        Image(systemName: "heart") // to know which image to use, we go to sfsymbols in apple
                    }
                    Button {
                        
                    } label: {
                        Image(systemName: "bubble.right")
                    }
                    Button {

                    } label: {
                        Image(systemName: "paperplane")
                    }
                    Spacer()
                }
                .foregroundColor(.black)
                .padding(.leading, 8)
                .padding(.top, 2)
                
                // Likes
                Text("23 likes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading) // this is to align it to the left
                    .padding(.leading, 10)
                    .padding(.top, 1)
                
                // another way to do the above is
    //            HStack {
    //                Text("23 likes")
    //                    .font(.footnote)
    //                    .fontWeight(.semibold)
    //                Spacer()
    //            }
                
                // Caption
                HStack {
                    Text("Batman").fontWeight(.semibold) + // + is used to concatenate
                    Text("The Dark knight returns")
                    Spacer()
                }
                .font(.footnote)
                .padding(.leading, 8)
                .padding(.top, 1)
                
                // Time post
                Text("6h ago")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 8)
                
            } // end of main VStack
//        }
        
    }
}
