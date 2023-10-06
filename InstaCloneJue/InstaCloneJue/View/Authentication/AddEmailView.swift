import SwiftUI

struct AddEmailView: View {
    @State var email: String = ""
    @Environment(\.dismiss) var dismiss // code needed to execute the dismiss method
    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                Text("Add your email")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                
                Text("You will use this email to sign up into your account")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .fontWeight(.semibold)
                    .padding(.top, 20)
                
                // Email
                TextField("Enter your email", text: $email)
                    .autocapitalization(.none)
                    .modifier(AuthTextModifier())
                    .cornerRadius(10)
                    
//                NavigationLink {
//                    Text("Hello")
//                } label: {
//                    // Button Next
//                    Button {
//
//                    } label: {
//                        Text("Next")
//                            .font(.footnote)
//                            .fontWeight(.semibold)
//                            .foregroundColor(.white)
//                            .frame(width: 360, height: 44)
//                            .background(Color(.systemBlue))
//                            .cornerRadius(8)
//                    }
//                }
                // Button Next
                Button {
                    
                } label: {
                    NavigationLink {
                        CreateUsernameView()
                            .navigationBarBackButtonHidden(true) // this is to hide the default Back button
                    } label: {
                        Text("Next")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 360, height: 44)
                            .background(Color(.systemBlue))
                            .cornerRadius(8)
                    }
                }
                
                Spacer()
            }
            .padding(.horizontal,24)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "chevron.left")
                        .imageScale(.large)
                        .onTapGesture {
                            /** This code "kills" the current view and gets back to its predecesor **/
                            self.dismiss()
                        }
                }
            }
        }
        
        
    }
}
