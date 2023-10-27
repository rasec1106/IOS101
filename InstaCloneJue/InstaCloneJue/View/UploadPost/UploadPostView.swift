import SwiftUI
import PhotosUI

struct UploadPostView: View {
    @State var caption: String = ""
    @State var isPresented: Bool = false
    @State var photoItem: PhotosPickerItem?
    var body: some View {
        VStack {
            // Button actions
            HStack{
                Button {
                    
                } label: {
                    Text("Cancel")
                }
                Spacer()
                Button {
                    
                } label: {
                    Text("New Post")
                        .fontWeight(.semibold)
                }
                Spacer()
                Button {
                    
                } label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                }
            }
            
            // Pic and caption
            HStack {
                Image("Batman")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
                TextField("Caption", text: $caption, axis: .vertical)
            }
        } // end of VStack
        .padding(.horizontal, 8)
        .onAppear{
            isPresented.toggle() 
        }
        .photosPicker(isPresented: $isPresented, selection: $photoItem)
    }
}
