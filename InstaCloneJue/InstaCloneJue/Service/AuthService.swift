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
        
    }
    
    func loadUsers() async throws{
        
    }
    
    func signOut(){
        
    }
}
