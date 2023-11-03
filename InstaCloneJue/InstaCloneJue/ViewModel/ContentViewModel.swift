//
//  ContentViewModel.swift
//  InstaCloneJue
//
//  Created by Suite on 2/11/23.
//

import Foundation
import FirebaseAuth
import Combine

class ContentViewModel: ObservableObject{ //
    /*
     ObservableObject means that this class publishes content
     However this protocol (interface) ObservableObject is needed only if a View (in our case ContenView) needs to access to the content
     It will only publishes variables that have the annotation @Published
     */
    private let service = AuthService.shared
    @Published var userSession: FirebaseAuth.User?
    private var cancellation = Set<AnyCancellable>()
    
    init(){
        setupSuscriber()
    }
    
    func setupSuscriber(){
        // this is used to avoid memory leak
        service.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancellation)
    }
}
