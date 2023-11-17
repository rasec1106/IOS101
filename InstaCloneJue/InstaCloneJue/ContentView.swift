//
//  ContentView.swift
//  InstaCloneJue
//
//  Created by Suite on 31/08/23.
//

import SwiftUI

struct ContentView: View {
    // StateObject is to subscribe
    @StateObject var viewModel = ContentViewModel()
    @State var username = "hola"
    var body: some View {
        if (viewModel.userSession == nil){
            LoginView()
        }else{
            MainTabView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
