//
//  Instagram_CloneApp.swift
//  Instagram_Clone
//
//  Created by Umamaheshwari on 10/1/23.
//

import SwiftUI
import Firebase

@main
struct Instagram_CloneApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel.shared)
        }
    }
}
