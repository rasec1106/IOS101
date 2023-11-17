import SwiftUI

struct CompleteSignUpView: View {
    @EnvironmentObject var registerViewModel: RegisterViewModel // This is a "global object"
    @Environment(\.dismiss) var dismiss // code needed to execute the dismiss method
    
    // Add this line assuming you have a ContentViewModel accessible
    @StateObject var viewModel = ContentViewModel()
    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                Text("Welcome to Instagram")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                Text("Click below to continue")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .fontWeight(.semibold)
                    .padding(.top, 20)
                
//                NavigationLink {
//                    MainTabView()
//                        .navigationBarBackButtonHidden(true) // this is to hide the default Back button
//
//                } label: {
//                    Text("Next")
//                        .font(.footnote)
//                        .fontWeight(.semibold)
//                        .foregroundColor(.white)
//                        .frame(width: 360, height: 44)
//                        .background(Color(.systemBlue))
//                        .cornerRadius(8)
//                }
                Button{
                    Task{
                        // Call the creatUser function from the RegisterViewModel
                        try await registerViewModel.createUser()
                    }
                    
                } label: {
                    Text("Ok")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }

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
