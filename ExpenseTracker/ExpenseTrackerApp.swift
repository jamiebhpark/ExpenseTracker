//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by JONGHUN PARK on 6/12/24.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
