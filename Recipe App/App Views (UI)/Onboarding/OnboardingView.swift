//
//  OnboardingView.swift
//  Recipe App
//
//  Created by Masa Abboud on 2/22/25.
//

import SwiftUI

struct OnboardingView: View {
    @State private var currentPage = 0;
    
    
    var body: some View {
        VStack {
            TabView(selection: $currentPage) {
                WelcomeView(currentPage: $currentPage).tag(0)
                SignUpView(currentPage: $currentPage).tag(1)
                GoalsView(currentPage: $currentPage).tag(2)
            }
        }
    }
}


struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
