//
//  Recipe_AppApp.swift
//  Recipe App
//
//  Created by Masa Abboud on 2/22/25.
//

import SwiftUI

import Firebase


@main
struct Recipe_AppApp: App {
    @AppStorage("isOnboardingShowing") private var isOnboardingShowing = true
    
    init() {
            FirebaseApp.configure()
        }
    
    var body: some Scene {
        WindowGroup {
            if isOnboardingShowing {
                OnboardingView()  // Show onboarding first
            } else {
                HomeView()
            }
        }
    }
}

