//
//  Invest_TrialApp.swift
//  Invest Trial
//
//  Created by Abservetech on 25/09/23.
//

import SwiftUI

@main
struct Invest_TrialApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            CommonVc()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
