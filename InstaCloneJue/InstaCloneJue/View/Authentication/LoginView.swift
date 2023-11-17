import SwiftUI

struct LoginView: View {
//    @State var email: String = ""
//    @State var password: String = ""
    @StateObject var loginViewModel: LoginViewModel = LoginViewModel()
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                // Logo
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
                VStack {
                    // Email
//                    TextField("Enter your email", text: $email)
                    TextField("Enter your email", text: $loginViewModel.email)
                        .autocapitalization(.none)
                        .modifier(AuthTextModifier())
                    // Password
                    SecureField("Enter your password", text: $loginViewModel.password)
                        .autocapitalization(.none)
                        .modifier(AuthTextModifier())
                } // end of VStack TextField
                .padding(.horizontal,24)
                
                // Button ForgotPassword
                Button {
                    
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top) // by default 10px
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.horizontal)
                
                // Button Login
                Button {
                    Task{
                        try await loginViewModel.login()
                    }
                } label: {
                    Text("Login")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }
                
                // Horizontal divider
                HStack {
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width/2 - 40, height: 0.5)
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width/2 - 40, height: 0.5)
                }
                .foregroundColor(.gray)
                .padding(.top)
                
                // Login with facebook
                HStack {
                    CircleImage(image: "facebookLogo", width: 20, height: 20)
                    Text("Continue with facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                }
                .padding(.top)
                
                Spacer()
                Divider()
                
                NavigationLink {
                    // Destination View
                    AddEmailView()
                        .navigationBarBackButtonHidden(true) // this is to hide the default Back button
                } label: {
                    // Sign up link
                    HStack {
                        Text("Don't have an account?")
                        Text("Sign up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                    .foregroundColor(Color(.systemBlue))
                }
                
            } // end of VStack
        } // end of NavigationStack
        
    }
}
