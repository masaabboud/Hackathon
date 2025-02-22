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

struct PageInfo: Identifiable {
    let id = UUID()
    let label: String
    let text: String
}

let pages = [
    PageInfo(label: "Welcome to app", text: "xyz"),
    PageInfo(label: "we need data", text: "data"),
    PageInfo(label: "hello", text: "hi")
]

struct WelcomeView: View {
    var body: some View{
        VStack{
            TabView{
                //iterate over screens
                //ForEach(0..<3){
                    //something
                }
            }
        }
    }
//}

