//
//  Recipe_AppApp.swift
//  Recipe App
//
//  Created by Masa Abboud on 2/22/25.
//

import SwiftUI

@main
struct Recipe_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
