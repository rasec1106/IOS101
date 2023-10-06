//
//  InstaCloneJueApp.swift
//  InstaCloneJue
//
//  Created by Suite on 31/08/23.
//

import SwiftUI
/*
 Add some code for firebase setup
 */
import FirebaseCore
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
// end of code

@main
struct InstaCloneJueApp: App {
    // register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            // ContentView()
            MainTabView()
//            LoginView()
        }
    }
}
