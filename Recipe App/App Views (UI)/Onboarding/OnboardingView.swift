//
//  OnboardingView.swift
//  Recipe App
//
//  Created by Masa Abboud on 2/22/25.
//

import SwiftUI

struct OnboardingView: View {
    //persist data, so once user presses "ok" ownt see again
    @AppStorage("isOnboardingShowing") var isOnboardingShowing = true
    var body: some View {
        VStack {
            Text("Welcome")
        }
        .sheet(isPresented: $isOnboardingShowing, content: {
            WelcomeView()
        })
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
