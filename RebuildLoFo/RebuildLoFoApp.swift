//
//  RebuildLoFoApp.swift
//  RebuildLoFo
//
//  Created by Nicholas  on 17/04/25.
//

import SwiftUI
import SwiftData

@main
struct RebuildLoFoApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView(isLoggedIn: false)
                .preferredColorScheme(.light)
        }
        .modelContainer(sharedModelContainer)
        
    }
}
