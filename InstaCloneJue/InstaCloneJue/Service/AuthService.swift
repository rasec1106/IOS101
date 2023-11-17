import Foundation
import FirebaseAuth
class AuthService{
    @Published // this means that this class is a publisher. Whenever it has this annotation
    var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init(){
        self.userSession = Auth.auth().currentUser
    }
    
    func login(email: String, password: String) async throws {
        let result = try await Auth.auth().signIn(withEmail: email, password: password)
        self.userSession = result.user
    }
    
    func createUser(email: String, username: String, password: String) async throws {
        // This Auth.auth() belongs to Firebase
        let result = try await Auth.auth().createUser(withEmail: email, password: password)
        self.userSession = result.user
    }
    
    func loadUsers() async throws{
        
    }
    
    func signOut(){
        try? Auth.auth().signOut()
        self.userSession = nil
    }
}
