//
//  Sport_Data__App.swift
//  Sport Data +
//
//  Created by Thijs Govers on 05/06/2023.
//

import SwiftUI

@main
struct Sport_Data__App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
