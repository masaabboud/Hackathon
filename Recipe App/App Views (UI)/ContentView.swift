//
//  ContentView.swift
//  Recipe App
//
//
import SwiftUI

struct ContentView: View {
    //persist data, so once user presses "ok" ownt see again
    var body: some View {
        @State var showResult: Bool = false
        VStack {
            Text("Hello")
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
