//
//  AuthService.swift
//  InstaCloneJue
//
//  Created by Suite on 2/11/23.
//

import Foundation
import FirebaseAuth
class AuthService{
    @Published
    var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init(){
        self.userSession = Auth.auth().currentUser
    }
    
    func login(email: String, password: String) async throws {
        
    }
    
    func createUser(email: String, username: String, password: String) async throws {
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
                // Comprueba si hubo algún error durante la creación del usuario
                if let error = error {
                    print("Error al crear un nuevo usuario: \(error.localizedDescription)")
                    return
                }
                
                // El usuario se creó con éxito
                print("Usuario creado con éxito")
                
                // Puedes acceder a la información del usuario recién creado utilizando authResult
                // authResult?.user.uid contiene el UID del usuario
                
                // También puedes realizar otras acciones después de crear el usuario, como redirigir a otra pantalla, etc.
            }
    }
    
    func loadUsers() async throws{
        
    }
    
    func signOut(){
        
    }
}
