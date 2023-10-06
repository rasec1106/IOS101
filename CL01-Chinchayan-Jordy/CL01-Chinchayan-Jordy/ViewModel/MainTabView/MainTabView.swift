//
//  TabView.swift
//  CL01-Chinchayan-Jordy
//
//  Created by Suite on 30/09/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
            VStack{
                HStack {
                    
                    Image("Barras")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Spacer()
                    Text("Hola Jordy")
                    Spacer()
                    Image("Bell")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Image("shop")
                        .resizable()
                        .frame(width: 40, height: 40)
                }// end hstack
                
                NavigationStack {
                    HStack{
                        Image("crad")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Activa tu tarjeta Pay obten 5%")
                    }
                    
                    HStack {
                        Image("account")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Abre tu cuenta ahora con una tasa preferencial")
                    }
                    HStack {
                        Image("aplication")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text("Solicita tarjeta OH! beneficios exclusivos")
                    }
                }
                
                
                
            }// end vstack
            
        }
}



