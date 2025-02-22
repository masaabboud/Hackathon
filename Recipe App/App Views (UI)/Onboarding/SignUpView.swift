//
//  SignUpView.swift
//  Recipe App
//
//  Created by Masa Abboud on 2/22/25.
//

import SwiftUI

struct SignUpView: View {
    @Binding var currentPage: Int
    var body: some View{
        VStack{
            Text("sign up here!")
            Button(action: {
                withAnimation {
                    currentPage += 1
                }
            }) {
                Text("create account")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
                    .cornerRadius(30)
            }
        }
        .padding()
    }
}



