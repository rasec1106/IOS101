//
//  CreatePasswordView.swift
//  InstaCloneJue
//
//  Created by Suite on 21/09/23.
//

import SwiftUI

struct CreatePasswordView: View {
    @State var password: String = ""
    @Environment(\.dismiss) var dismiss // code needed to execute the dismiss method
    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                Text("Create Password")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                Text("Pick a password for your new account")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .fontWeight(.semibold)
                    .padding(.top, 20)
                SecureField("Password", text: $password)
                    .autocapitalization(.none)
                    .modifier(AuthTextModifier())
                    .cornerRadius(10)
                
                NavigationLink {
                    CompleteSignUpView()
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
